import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/config.dart';
import '../../../models/category/category_model.dart';
import '../../repos/i_main_repo.dart';
import '../../services/i_main_service.dart';

part 'comments_state.dart';

class CommentsCubit extends Cubit<CommentsState> {
  IMainService service;
  IMainRepo repo;
  CommentsCubit(this.repo, this.service) : super(CommentInitial());

  Future<void> getHouseComments(int houseId) async {
    try {
      emit(CommentLoading());
      final result = await service.getHouseComments(houseId);
      result.fold(
        (failure) => emit(CommentError()),
        (r) {
          emit(CommentSuccess(comment: repo.comments));
        },
      );
    } catch (ex, s) {
      emit(CommentError());
      logger(ex.toString());
      logger(s.toString());
    }
  }

  Future<void> comment(int id, double rating, String desc, {int? commentId}) async {
    try {
      emit(CommentLoading());
      print(desc);
      print(commentId);
      final result = await service.commentHouse(id, rating, desc, replyId: commentId);
      print(result);
      print(result);
      print(result);
      print(result);

      print(result);
      print(result);
      result.fold(
        (failure) => emit(CommentError()),
        (r) {
          emit(CommentSuccess(comment: repo.comments));
        },
      );
    } catch (ex, s) {
      emit(CommentError());

      logger(ex.toString());
      logger(s.toString());
    }
  }

  Future<void> updateComment(int houseId, int commentId, String desc) async {
    try {
      emit(CommentLoading());
      final result = await service.updateComment(houseId, commentId, desc);
      result.fold(
        (failure) => emit(CommentError()),
        (r) {
          emit(CommentSuccess(comment: repo.comments));
        },
      );
    } catch (ex, s) {
      emit(CommentError());

      logger(ex.toString());
      logger(s.toString());
    }
  }

  Future<void> deleteComment(int id) async {
    try {
      final result = await service.deleteComment(id);
      result.fold(
        (failure) => emit(CommentError()),
        (r) {
          emit(CommentSuccess(comment: repo.comments));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }
}
