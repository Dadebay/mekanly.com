class AbuseReason {
  final int id;
  final String type;
  final String description;

  AbuseReason({
    required this.id,
    required this.type,
    required this.description,
  });

  factory AbuseReason.fromJson(Map<String, dynamic> json) {
    return AbuseReason(
      id: json['id'] as int,
      type: json['type'] as String,
      description: json['description'] as String,
    );
  }
}
