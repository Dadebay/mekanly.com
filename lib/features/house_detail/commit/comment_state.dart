import '../../../remote/repositories/comment/commet_model.dart';

abstract class CommentState {}

class CommentInitial extends CommentState {}

class CommentLoading extends CommentState {}

class CommentLoaded extends CommentState {
  final List<Comment> comments;
  final Set<String> loadingCommentIds;

  CommentLoaded(this.comments, {Set<String>? loadingCommentIds})
      : loadingCommentIds = loadingCommentIds ?? {};

  CommentLoaded copyWith({
    List<Comment>? comments,
    Set<String>? loadingCommentIds,
  }) {
    return CommentLoaded(
      comments ?? this.comments,
      loadingCommentIds: loadingCommentIds ?? this.loadingCommentIds,
    );
  }
}

class CommentError extends CommentState {
  final String message;
  CommentError(this.message);
}
