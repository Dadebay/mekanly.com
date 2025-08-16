// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

import '../../../remote/repositories/comment/commet_model.dart';
import '../../../remote/repositories/comment/commet_service.dart';

// ignore: must_be_immutable
class BuildLikeDislikeRow extends StatefulWidget {
  Comment comment;
  BuildLikeDislikeRow({
    super.key,
    required this.comment,
  });

  @override
  State<BuildLikeDislikeRow> createState() => _BuildLikeDislikeRowState();
}

class _BuildLikeDislikeRowState extends State<BuildLikeDislikeRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            final wasLiked = widget.comment.userReaction == 1;
            final previousReaction = widget.comment.userReaction;
            final previousLikeCount = widget.comment.likeCount;
            final previousDislikeCount = widget.comment.dislikeCount;

            setState(() {
              if (wasLiked) {
                widget.comment.userReaction = null;
                widget.comment.likeCount--;
              } else {
                if (widget.comment.userReaction == -1) {
                  widget.comment.dislikeCount--;
                }
                widget.comment.userReaction = 1;
                widget.comment.likeCount++;
              }
            });

            try {
              await CommentService().sendReaction(
                model: 'UserComment',
                modelId: widget.comment.id,
                type: wasLiked ? 'remove' : 'like',
              );
              final updatedComments =
                  await CommentService().getMyPostComments();
              final updatedComment = updatedComments.firstWhere(
                (c) => c.id == widget.comment.id,
                orElse: () => widget.comment,
              );
              setState(() {
                widget.comment
                  ..userReaction = updatedComment.userReaction
                  ..likeCount = updatedComment.likeCount
                  ..dislikeCount = updatedComment.dislikeCount;
              });
            } catch (e) {
              setState(() {
                widget.comment
                  ..userReaction = previousReaction
                  ..likeCount = previousLikeCount
                  ..dislikeCount = previousDislikeCount;
              });
            }
          },
          icon: widget.comment.userReaction == 1
              ? Assets.icons.icSelectedLike
                  .svg(width: 20, height: 20, package: 'gen')
              : Assets.icons.icLike.svg(
                  width: 20,
                  height: 20,
                  package: 'gen',
                  color: const Color.fromARGB(255, 140, 140, 140),
                ),
        ),
        Text(
          '${widget.comment.likeCount}',
          style: const TextStyle(fontSize: 10),
        ),
        const SizedBox(width: 12),
        IconButton(
          onPressed: () async {
            final wasDisliked = widget.comment.userReaction == -1;
            final previousReaction = widget.comment.userReaction;
            final previousLikeCount = widget.comment.likeCount;
            final previousDislikeCount = widget.comment.dislikeCount;

            setState(() {
              if (wasDisliked) {
                widget.comment.userReaction = null;
                widget.comment.dislikeCount--;
              } else {
                if (widget.comment.userReaction == 1) {
                  widget.comment.likeCount--;
                }
                widget.comment.userReaction = -1;
                widget.comment.dislikeCount++;
              }
            });

            try {
              await CommentService().sendReaction(
                model: 'UserComment',
                modelId: widget.comment.id,
                type: wasDisliked ? 'remove' : 'dislike',
              );
              final updatedComments =
                  await CommentService().getMyPostComments();
              final updatedComment = updatedComments.firstWhere(
                (c) => c.id == widget.comment.id,
                orElse: () => widget.comment,
              );

              setState(() {
                widget.comment
                  ..userReaction = updatedComment.userReaction
                  ..likeCount = updatedComment.likeCount
                  ..dislikeCount = updatedComment.dislikeCount;
              });
            } catch (e) {
              setState(() {
                widget.comment
                  ..userReaction = previousReaction
                  ..likeCount = previousLikeCount
                  ..dislikeCount = previousDislikeCount;
              });
            }
          },
          icon: widget.comment.userReaction == -1
              ? Assets.icons.icSelectedDislike
                  .svg(width: 20, height: 20, package: 'gen')
              : Assets.icons.icDislike.svg(
                  width: 20,
                  height: 20,
                  package: 'gen',
                  color: const Color.fromARGB(255, 140, 140, 140),
                ),
        ),
        Text('${widget.comment.dislikeCount}',
            style: const TextStyle(fontSize: 10)),
      ],
    );
  }
}
