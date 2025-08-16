import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:intl/intl.dart';
import '../../../remote/repositories/comment/commet_model.dart';
import '../../../remote/repositories/comment/commet_service.dart';
import '../../core/components/app_text.dart';
import '../../localization/extensions.dart';
import '../../product/constants/constants.dart';
import 'widgets.dart/build_like_dislike_row.dart';

class CommentsView extends StatefulWidget {
  const CommentsView({
    super.key,
  });

  static const routePath = '/comments-view';
  static const routeName = 'comments-view';

  @override
  State<CommentsView> createState() => _CommentsViewState();
}

class _CommentsViewState extends State<CommentsView> {
  final CommentService _commentService = CommentService();
  late Future<List<Comment>> _commentsForMeFuture;
  late Future<List<Comment>> _myCommentsFuture;
  bool _showCommentsForMe = true;
  final FocusNode _commentFocusNode = FocusNode();
  final Map<String, bool> _showReplies = {};
  final Map<String, bool> _isEditing = {};
  final Map<String, TextEditingController> _editControllers = {};
  final TextEditingController _commentController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _loadComments();
  }

  void _loadComments() {
    setState(() {
      _commentsForMeFuture = _commentService.getMyPostComments();
      _myCommentsFuture = _commentService.getMyComments();
    });
  }

  String formatDate(String dateStr) {
    final date = DateTime.tryParse(dateStr);
    if (date == null) return dateStr;
    return DateFormat('dd.MM.yyyy, HH:mm').format(date);
  }

  Comment? _currentlyEditedComment;

  void _handleEditComment(Comment comment) {
    setState(() {
      _isEditing[comment.id] = true;
      _currentlyEditedComment = comment;
      _commentController.text = comment.content;
    });
    _commentFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.blueish,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Assets.icons.icBackImage.svg(package: 'gen'),
        ),
        title: AppText.s14w400BdM(
          context.translation.comments,
          fontWeight: FontWeight.w400,
          fontFamily: StringConstants.roboto,
          fontSize: 16.sp,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          _buildToggleButtons(),
          Expanded(
            child: _showCommentsForMe
                ? _buildCommentsList(_commentsForMeFuture)
                : _buildCommentsList(_myCommentsFuture),
          ),
          if (_currentlyEditedComment != null)
            _buildCommentContent(_currentlyEditedComment!),
        ],
      ),
    );
  }

  Widget _buildToggleButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _showCommentsForMe = true;
              });
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                border: Border.all(
                  width: 1.sp,
                  color: _showCommentsForMe
                      ? const Color(0xFFE5F6FE)
                      : const Color(0xFFEEEEEE),
                ),
                color: _showCommentsForMe ? const Color(0xFFE5F6FE) : null,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6).h,
                child: AppText.s14w400BdM(
                  context.translation.my_inbox,
                  fontWeight:
                      _showCommentsForMe ? FontWeight.w500 : FontWeight.w400,
                  fontSize: 12.sp,
                  fontFamily: StringConstants.roboto,
                  color: _showCommentsForMe
                      ? const Color(0xFF3A8BCF)
                      : const Color(0xFF6A6A6A),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _showCommentsForMe = false;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                border: Border.all(
                  width: 1.sp,
                  color: !_showCommentsForMe
                      ? const Color(0xFFE5F6FE)
                      : const Color(0xFFEEEEEE),
                ),
                color: !_showCommentsForMe ? const Color(0xFFE5F6FE) : null,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6).h,
                child: AppText.s14w400BdM(
                  context.translation.my_comments,
                  fontWeight:
                      !_showCommentsForMe ? FontWeight.w500 : FontWeight.w400,
                  fontSize: 12.sp,
                  fontFamily: StringConstants.roboto,
                  color: !_showCommentsForMe
                      ? const Color(0xFF3A8BCF)
                      : const Color(0xFF6A6A6A),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentsList(Future<List<Comment>> commentsFuture) {
    return FutureBuilder<List<Comment>>(
      future: commentsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox.shrink();
        }

        if (snapshot.hasError) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.com.svg(package: 'gen'),
                  const SizedBox(height: 15),
                  Text(
                    context.translation.no_comments,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 34, 34, 34),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 208,
                    child: TextButton(
                      onPressed: _loadComments,
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: Text(
                        context.translation.try_again,
                        style: const TextStyle(
                          color: Color.fromRGBO(36, 36, 36, 1),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.com.svg(package: 'gen', height: 43.44, width: 46),
                const SizedBox(height: 15),
                Text(
                  context.translation.no_comments,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final comment = snapshot.data![index];
            if (comment.parentId != null) {
              return _buildReplyCard(comment);
            }
            return _buildCommentCard(comment);
          },
        );
      },
    );
  }

  Widget _buildCommentCard(Comment comment) {
    final isReply = comment.parentId != null;
    final isOwner = comment.isOwner;
    final isActive = comment.status == 'active';
    final hasReplies = comment.replies.isNotEmpty;
    final isEditing = _isEditing[comment.id] ?? false;

    if (isEditing && !_editControllers.containsKey(comment.id)) {
      _editControllers[comment.id] =
          TextEditingController(text: comment.content);
    }

    return Padding(
      padding: EdgeInsets.only(left: isReply ? 10 : 0, bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: isReply ? const Color(0xFFF6F6F6) : Colors.transparent,
          borderRadius: isReply
              ? const BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                  bottomLeft: Radius.circular(7),
                )
              : null,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  comment.user.username,
                  style: TextStyle(
                    fontFamily: StringConstants.roboto,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 106, 106, 106),
                    fontSize: 12.sp,
                  ),
                ),
                if (isOwner)
                  Text(
                    context.translation.eyesi,
                    style: TextStyle(
                      fontFamily: StringConstants.roboto,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 13, 149, 233),
                      fontSize: 12.sp,
                    ),
                  ),
                if (!isActive)
                  Text(
                    context.translation.verifying,
                    style: TextStyle(
                      fontFamily: StringConstants.roboto,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 13, 149, 233),
                      fontSize: 12.sp,
                    ),
                  ),
                if (!isActive)
                  PopupMenuButton<String>(
                    icon: Assets.icons.icDotsVertical.svg(package: 'gen'),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4).r,
                      side: BorderSide(
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem<String>(
                        value: 'delete',
                        child: Text(
                          context.translation.delete,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: StringConstants.roboto,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'edit',
                        child: Text(
                          context.translation.edit,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: StringConstants.roboto,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                    onSelected: (value) {
                      if (value == 'edit') {
                        _handleEditComment(comment);
                      } else if (value == 'delete') {
                        _deleteComment(comment.id);
                      }
                    },
                  ),
              ],
            ),
            Text(
              comment.content,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: StringConstants.roboto,
                color: const Color.fromARGB(255, 34, 34, 34),
              ),
            ),
            const SizedBox(height: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(
                    DateFormat('dd.MM.yyyy • HH:mm', 'tr_TR')
                        .format(comment.createdAt),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: StringConstants.roboto,
                      fontSize: 12.sp,
                      color: const Color.fromARGB(255, 106, 106, 106),
                    ),
                  ),
                ]),
                const SizedBox(width: 12),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        final wasLiked = comment.userReaction == 1;
                        final previousReaction = comment.userReaction;
                        final previousLikeCount = comment.likeCount;
                        final previousDislikeCount = comment.dislikeCount;

                        setState(() {
                          if (wasLiked) {
                            comment.userReaction = null;
                            comment.likeCount--;
                          } else {
                            if (comment.userReaction == -1) {
                              // If previously disliked, remove dislike
                              comment.dislikeCount--;
                            }
                            comment.userReaction = 1;
                            comment.likeCount++;
                          }
                        });

                        try {
                          await _commentService.sendReaction(
                            model: 'UserComment',
                            modelId: comment.id,
                            type: wasLiked ? 'remove' : 'like',
                          );
                          final updatedComments =
                              await _commentService.getMyPostComments();
                          final updatedComment = updatedComments.firstWhere(
                            (c) => c.id == comment.id,
                            orElse: () => comment,
                          );
                          setState(() {
                            comment
                              ..userReaction = updatedComment.userReaction
                              ..likeCount = updatedComment.likeCount
                              ..dislikeCount = updatedComment.dislikeCount;
                          });
                        } catch (e) {
                          setState(() {
                            comment
                              ..userReaction = previousReaction
                              ..likeCount = previousLikeCount
                              ..dislikeCount = previousDislikeCount;
                          });
                        }
                      },
                      icon: comment.userReaction == 1
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
                      '${comment.likeCount}',
                      style: const TextStyle(fontSize: 10),
                    ),
                    const SizedBox(width: 12),
                    IconButton(
                      onPressed: () async {
                        final wasDisliked = comment.userReaction == -1;
                        final previousReaction = comment.userReaction;
                        final previousLikeCount = comment.likeCount;
                        final previousDislikeCount = comment.dislikeCount;

                        setState(() {
                          if (wasDisliked) {
                            comment.userReaction = null;
                            comment.dislikeCount--;
                          } else {
                            if (comment.userReaction == 1) {
                              comment.likeCount--;
                            }
                            comment.userReaction = -1;
                            comment.dislikeCount++;
                          }
                        });

                        try {
                          await _commentService.sendReaction(
                            model: 'UserComment',
                            modelId: comment.id,
                            type: wasDisliked ? 'remove' : 'dislike',
                          );
                          final updatedComments =
                              await _commentService.getMyPostComments();
                          final updatedComment = updatedComments.firstWhere(
                            (c) => c.id == comment.id,
                            orElse: () => comment,
                          );

                          setState(() {
                            comment
                              ..userReaction = updatedComment.userReaction
                              ..likeCount = updatedComment.likeCount
                              ..dislikeCount = updatedComment.dislikeCount;
                          });
                        } catch (e) {
                          setState(() {
                            comment
                              ..userReaction = previousReaction
                              ..likeCount = previousLikeCount
                              ..dislikeCount = previousDislikeCount;
                          });
                        }
                      },
                      icon: comment.userReaction == -1
                          ? Assets.icons.icSelectedDislike
                              .svg(width: 20, height: 20, package: 'gen')
                          : Assets.icons.icDislike.svg(
                              width: 20,
                              height: 20,
                              package: 'gen',
                              color: const Color.fromARGB(255, 140, 140, 140),
                            ),
                    ),
                    Text('${comment.dislikeCount}',
                        style: const TextStyle(fontSize: 10)),
                  ],
                )
              ],
            ),
            if (hasReplies && (_showReplies[comment.id] ?? false))
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: comment.replies.map(_buildCommentCard).toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildReplyCard(Comment comment) {
    final isOwner = comment.isOwner;
    final isActive = comment.status == 'active';

    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 8, top: 4),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7.sp),
              topRight: Radius.circular(7.sp),
              bottomLeft: Radius.circular(7.sp),
            ),
            color: const Color(0xFFF6F6F6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    comment.user.username,
                    style: TextStyle(
                      fontFamily: StringConstants.roboto,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 106, 106, 106),
                      fontSize: 12.sp,
                    ),
                  ),
                  if (isOwner)
                    Text(
                      context.translation.eyesi,
                      style: TextStyle(
                        fontFamily: StringConstants.roboto,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 13, 149, 233),
                        fontSize: 12.sp,
                      ),
                    ),
                  if (!isActive)
                    Text(
                      context.translation.verifying,
                      style: TextStyle(
                        fontFamily: StringConstants.roboto,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 13, 149, 233),
                        fontSize: 12.sp,
                      ),
                    ),
                  if (!isActive)
                    PopupMenuButton<String>(
                      icon: Assets.icons.icDotsVertical.svg(package: 'gen'),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4).r,
                        side: BorderSide(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem<String>(
                          value: 'delete',
                          child: Text(
                            context.translation.delete,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: StringConstants.roboto,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'edit',
                          child: Text(
                            context.translation.edit,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: StringConstants.roboto,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                      onSelected: (value) {
                        if (value == 'edit') {
                          _handleEditComment(comment);
                        } else if (value == 'delete') {
                          _deleteComment(comment.id);
                        }
                      },
                    ),
                ],
              ),
              AppText.s14w400BdM(
                DateFormat('dd.MM.yyyy • HH:mm', 'tr_TR')
                    .format(comment.createdAt),
                fontFamily: StringConstants.roboto,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colors.black,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                AppText.s14w400BdM(
                  comment.content,
                  fontFamily: StringConstants.roboto,
                  fontWeight: FontWeight.w400,
                  fontSize: 11.sp,
                  color: Colors.black,
                ),
                BuildLikeDislikeRow(
                  comment: comment,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _deleteComment(String commentId) async {
    try {
      await _commentService.deleteComment(commentId);

      // Optimistically remove the comment from both lists
      setState(() {
        _commentsForMeFuture = _commentsForMeFuture.then((comments) {
          // Remove from main list
          comments.removeWhere((c) => c.id == commentId);
          // Remove from replies
          return comments.map((c) {
            if (c.replies.any((r) => r.id == commentId)) {
              return c.copyWith(
                  replies: c.replies.where((r) => r.id != commentId).toList());
            }
            return c;
          }).toList();
        });

        _myCommentsFuture = _myCommentsFuture.then((comments) {
          comments.removeWhere((c) => c.id == commentId);
          return comments.map((c) {
            if (c.replies.any((r) => r.id == commentId)) {
              return c.copyWith(
                  replies: c.replies.where((r) => r.id != commentId).toList());
            }
            return c;
          }).toList();
        });
      });
    } catch (e) {
      // Optionally show error message
    }
  }

  Widget _buildCommentContent(Comment comment) {
    final isEditing = _isEditing[comment.id] ?? false;

    if (isEditing) {
      // Initialize controller if not exists
      if (!_editControllers.containsKey(comment.id)) {
        _editControllers[comment.id] =
            TextEditingController(text: comment.content);
      }

      return Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 242, 242, 242),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _commentController,
                  focusNode: _commentFocusNode,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  ),
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color.fromARGB(255, 96, 96, 96),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_commentController.text.isNotEmpty) {
                    _updateCommentContent(comment.id, _commentController.text);
                    setState(() {
                      _isEditing[comment.id] = false;
                      _currentlyEditedComment = null;
                    });
                  }
                },
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2979FF),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Assets.icons.senCommet.svg(package: 'gen'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Return normal comment content when not editing
    return Text(
      comment.content,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamily: StringConstants.roboto,
        color: const Color.fromARGB(255, 34, 34, 34),
      ),
    );
  }

  Future<void> _updateCommentContent(
      String commentId, String newContent) async {
    try {
      await _commentService.updateComment(
        commentId: commentId,
        comment: newContent,
      );

      // Optimistically update the comment content
      await _updateCommentInList(commentId, (comment) {
        return comment.copyWith(content: newContent);
      });
    } catch (e) {
      // Optionally show error message
    }
  }

  Future<void> _updateCommentInList(
      String commentId, Comment Function(Comment) updateFn) async {
    setState(() {
      _commentsForMeFuture = _commentsForMeFuture.then((comments) {
        return comments.map((comment) {
          if (comment.id == commentId) {
            return updateFn(comment);
          }
          // Also check replies
          if (comment.replies.any((r) => r.id == commentId)) {
            return comment.copyWith(
              replies: comment.replies.map((reply) {
                return reply.id == commentId ? updateFn(reply) : reply;
              }).toList(),
            );
          }
          return comment;
        }).toList();
      });

      _myCommentsFuture = _myCommentsFuture.then((comments) {
        return comments.map((comment) {
          if (comment.id == commentId) {
            return updateFn(comment);
          }
          if (comment.replies.any((r) => r.id == commentId)) {
            return comment.copyWith(
              replies: comment.replies.map((reply) {
                return reply.id == commentId ? updateFn(reply) : reply;
              }).toList(),
            );
          }
          return comment;
        }).toList();
      });
    });
  }
}
