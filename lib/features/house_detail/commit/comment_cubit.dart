import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../remote/repositories/comment/commet_service.dart';
import 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  final CommentService _commentService;

  CommentCubit(this._commentService) : super(CommentInitial());

  Future<void> loadComments({
    required String id,
    required String type,
  }) async {
    emit(CommentLoading());
    try {
      final comments = await _commentService.getComments(id: id, type: type);
      emit(CommentLoaded(comments));
    } catch (e) {
      emit(CommentError('Yorumlar yüklenemedi: ${e.toString()}'));
    }
  }

  Future<void> submitComment({
    required String content,
    required String itemId,
    required String itemType,
    String? parentId,
  }) async {
    try {
      await _commentService.addComment(
        comment: content,
        commentableId: itemId,
        commentType: itemType,
        parentId: parentId,
      );
      await loadComments(id: itemId, type: itemType);
    } catch (e) {
      emit(CommentError('Yorum gönderilemedi: ${e.toString()}'));
    }
  }

  Future<void> deleteComment({
    required String commentId,
    required String itemId,
    required String itemType,
  }) async {
    try {
      await _commentService.deleteComment(commentId);
      await loadComments(id: itemId, type: itemType);
    } catch (e) {
      emit(CommentError('Yorum silinemedi: ${e.toString()}'));
    }
  }

  Future<void> updateComment({
    required String commentId,
    required String newContent,
    required String itemId,
    required String itemType,
  }) async {
    try {
      await _commentService.updateComment(
        commentId: commentId,
        comment: newContent,
      );
      await loadComments(id: itemId, type: itemType);
    } catch (e) {
      emit(CommentError('Yorum güncellenemedi: ${e.toString()}'));
    }
  }

  /// Beğeni / tepki gönderme fonksiyonu
  Future<void> reactToComment({
    required String model,
    required String modelId,
    required String type,
    required String itemId,
    required String itemType,
  }) async {
    final currentState = state;
    if (currentState is CommentLoaded) {
      // Loading durumu için commentId'yi loading setine ekle
      final newLoadingSet = Set<String>.from(currentState.loadingCommentIds);
      newLoadingSet.add(modelId);
      emit(currentState.copyWith(loadingCommentIds: newLoadingSet));

      try {
        await _commentService.sendReaction(
          model: model,
          modelId: modelId,
          type: type,
        );
        // Tepki gönderildikten sonra yorumları tekrar yükle
        await loadComments(id: itemId, type: itemType);
      } catch (e) {
        emit(CommentError('Tepki gönderilemedi: ${e.toString()}'));
      }
    }
  }
}
