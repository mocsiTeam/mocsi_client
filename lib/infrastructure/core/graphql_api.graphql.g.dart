// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAuthUser$Query$User _$GetAuthUser$Query$UserFromJson(
    Map<String, dynamic> json) {
  return GetAuthUser$Query$User()
    ..email = json['email'] as String
    ..error = json['error'] as String;
}

Map<String, dynamic> _$GetAuthUser$Query$UserToJson(
        GetAuthUser$Query$User instance) =>
    <String, dynamic>{
      'email': instance.email,
      'error': instance.error,
    };

GetAuthUser$Query _$GetAuthUser$QueryFromJson(Map<String, dynamic> json) {
  return GetAuthUser$Query()
    ..getAuthUser = GetAuthUser$Query$User.fromJson(
        json['getAuthUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetAuthUser$QueryToJson(GetAuthUser$Query instance) =>
    <String, dynamic>{
      'getAuthUser': instance.getAuthUser.toJson(),
    };
