// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_profile_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUser$Query$User _$GetUser$Query$UserFromJson(Map<String, dynamic> json) {
  return GetUser$Query$User()
    ..email = json['email'] as String
    ..firstname = json['firstname'] as String
    ..lastname = json['lastname'] as String
    ..nickname = json['nickname'] as String;
}

Map<String, dynamic> _$GetUser$Query$UserToJson(GetUser$Query$User instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'nickname': instance.nickname,
    };

GetUser$Query _$GetUser$QueryFromJson(Map<String, dynamic> json) {
  return GetUser$Query()
    ..getAuthUser = GetUser$Query$User.fromJson(
        json['getAuthUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetUser$QueryToJson(GetUser$Query instance) =>
    <String, dynamic>{
      'getAuthUser': instance.getAuthUser.toJson(),
    };
