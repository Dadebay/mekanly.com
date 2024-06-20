import 'dart:convert';

import '/config/config.dart';

class Usr {
  int? id;
  String? email;
  String? username;
  String? phone;
  String? role;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? emailVerifiedAt;
  String? phoneVerifiedAt;

  Usr({
    this.id,
    this.email,
    this.username,
    this.phone,
    this.role,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.emailVerifiedAt,
    this.phoneVerifiedAt,
  });

  Usr copyWith({
    int? id,
    String? email,
    String? username,
    String? role,
    String? status,
    String? createdAt,
    String? updatedAt,
    String? phone,
    String? emailVerifiedAt,
    String? phoneVerifiedAt,
  }) =>
      Usr(
        id: id ?? this.id,
        email: email ?? this.email,
        username: username ?? this.username,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
        phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
      );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "username": username,
      "email": email,
      "phone": phone,
      "email_verified_at": emailVerifiedAt,
      "phone_verified_at": phoneVerifiedAt,
      "role": role,
      "status": status,
      "created_at": createdAt,
      "updated_at": updatedAt
    };
  }

  factory Usr.fromMap(Map<String, dynamic> map) {
    return Usr(
      id: map['id'] != null ? map['id'] as int : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      role: map['role'] != null ? map['role'] as String : null,
      emailVerifiedAt: map['email_verified_at'] != null ? map['email_verified_at'] as String : null,
      phoneVerifiedAt: map['phone_verified_at'] != null ? map['phone_verified_at'] as String : null,
      createdAt: map['created_at'] != null ? map['created_at'] as String : null,
      updatedAt: map['updated_at'] != null ? map['updated_at'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usr.fromJson(String source) => Usr.fromMap(json.decode(source));
}
