import 'comment_user_model.dart';

class Comment {
  Comment({
    required this.id,
    required this.userid,
    required this.author,
    required this.authorId,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    this.parentId,
    this.avatarUrl,
    this.replies = const [],
    this.likeCount = 0,
    this.dislikeCount = 0,
    this.userReaction,
    this.isOwner = false,
    this.canEdit = false,
    this.canDelete = false,
    required this.user,
    this.status = 'active',
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    DateTime parseDate(dynamic date) {
      if (date == null) return DateTime.now();
      if (date is DateTime) return date;
      if (date is String) return DateTime.parse(date);
      return DateTime.now();
    }

    List<Comment> parseReplies(dynamic repliesData) {
      if (repliesData == null || repliesData is! List) return [];
      return repliesData
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    return Comment(
      id: json['id']?.toString() ?? '',
      userid: json['user_id']?.toString() ?? '',
      author: json['author']?.toString() ?? 'Eýesi',
      authorId: json['author_id']?.toString() ?? '',
      content: json['comment']?.toString() ?? '',
      createdAt: parseDate(json['created_at']),
      updatedAt: parseDate(json['updated_at']),
      parentId: json['parent_id']?.toString(),
      avatarUrl: json['avatar_url']?.toString(),
      replies: parseReplies(json['replies']),
      likeCount: (json['like'] as num?)?.toInt() ?? 0,
      dislikeCount: (json['dislike'] as num?)?.toInt() ?? 0,
      userReaction: json['user_reaction'] as int?,
      isOwner: json['is_owner'] as bool? ?? false,
      canEdit: json['can_edit'] as bool? ?? false,
      canDelete: json['can_delete'] as bool? ?? false,
      status: json['status']?.toString() ?? 'active',
      user: CommentUser.fromJson(
        (json['user'] ?? <String, dynamic>{}) as Map<String, dynamic>,
      ),
    );
  }

  final String id;
  final String userid;
  final String author;
  final String authorId;
  final String content;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? parentId;
  final String? avatarUrl;
  final List<Comment> replies;
  late int likeCount;
  late int dislikeCount;
  int? userReaction;
  final bool isOwner;
  final bool canEdit;
  final bool canDelete;
  final String status;
  final CommentUser user;

  bool get isLiked => userReaction == 1;
  bool get isDisliked => userReaction == -1;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userid,
      'author': author,
      'author_id': authorId,
      'comment': content,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'parent_id': parentId,
      'avatar_url': avatarUrl,
      'replies': replies.map((e) => e.toJson()).toList(),
      'like_count': likeCount,
      'dislike_count': dislikeCount,
      'user_reaction': userReaction,
      'is_owner': isOwner,
      'can_edit': canEdit,
      'can_delete': canDelete,
      'status': status,
      'user': user.toJson(),
    };
  }

  Comment copyWith({
    String? id,
    String? userid,
    String? author,
    String? authorId,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? parentId,
    String? avatarUrl,
    List<Comment>? replies,
    int? likeCount,
    int? dislikeCount,
    int? userReaction,
    bool? isOwner,
    bool? canEdit,
    bool? canDelete,
    String? status,
    CommentUser? user,
  }) {
    return Comment(
      id: id ?? this.id,
      userid: userid ?? this.userid,
      author: author ?? this.author,
      authorId: authorId ?? this.authorId,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      parentId: parentId ?? this.parentId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      replies: replies ?? this.replies,
      likeCount: likeCount ?? this.likeCount,
      dislikeCount: dislikeCount ?? this.dislikeCount,
      userReaction: userReaction ?? this.userReaction,
      isOwner: isOwner ?? this.isOwner,
      canEdit: canEdit ?? this.canEdit,
      canDelete: canDelete ?? this.canDelete,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }
}
