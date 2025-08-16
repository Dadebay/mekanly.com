class CommentUser {
  CommentUser({
    required this.username,
  });
  factory CommentUser.fromJson(Map<String, dynamic> json) {
    return CommentUser(
      username: json['username']?.toString() ?? 'Anonim',
    );
  }

  final String username;

  Map<String, dynamic> toJson() {
    return {
      'username': username,
    };
  }
}
