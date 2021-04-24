// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_conference_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserInfo$Query$User _$GetUserInfo$Query$UserFromJson(
    Map<String, dynamic> json) {
  return GetUserInfo$Query$User()
    ..firstname = json['firstname'] as String
    ..lastname = json['lastname'] as String
    ..email = json['email'] as String;
}

Map<String, dynamic> _$GetUserInfo$Query$UserToJson(
        GetUserInfo$Query$User instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
    };

GetUserInfo$Query _$GetUserInfo$QueryFromJson(Map<String, dynamic> json) {
  return GetUserInfo$Query()
    ..getAuthUser = GetUserInfo$Query$User.fromJson(
        json['getAuthUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetUserInfo$QueryToJson(GetUserInfo$Query instance) =>
    <String, dynamic>{
      'getAuthUser': instance.getAuthUser.toJson(),
    };
