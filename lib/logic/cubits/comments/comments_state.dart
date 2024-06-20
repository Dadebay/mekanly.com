part of 'comments_cubit.dart';

abstract class CommentsState {
  const CommentsState();
}

final class CommentInitial extends CommentsState {}

final class CommentLoading extends CommentsState {}

final class CommentSuccess extends CommentsState {
  final AllComments comment;
  const CommentSuccess({required this.comment});
}

final class CommentError extends CommentsState {}
