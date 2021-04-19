// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_auth_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUser$Mutation$Tokens _$CreateUser$Mutation$TokensFromJson(
    Map<String, dynamic> json) {
  return CreateUser$Mutation$Tokens()
    ..accessToken = json['accessToken'] as String
    ..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic> _$CreateUser$Mutation$TokensToJson(
        CreateUser$Mutation$Tokens instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

CreateUser$Mutation _$CreateUser$MutationFromJson(Map<String, dynamic> json) {
  return CreateUser$Mutation()
    ..createUser = CreateUser$Mutation$Tokens.fromJson(
        json['createUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateUser$MutationToJson(
        CreateUser$Mutation instance) =>
    <String, dynamic>{
      'createUser': instance.createUser.toJson(),
    };

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

Login$Mutation$Tokens _$Login$Mutation$TokensFromJson(
    Map<String, dynamic> json) {
  return Login$Mutation$Tokens()
    ..accessToken = json['accessToken'] as String
    ..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic> _$Login$Mutation$TokensToJson(
        Login$Mutation$Tokens instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

Login$Mutation _$Login$MutationFromJson(Map<String, dynamic> json) {
  return Login$Mutation()
    ..login =
        Login$Mutation$Tokens.fromJson(json['login'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Login$MutationToJson(Login$Mutation instance) =>
    <String, dynamic>{
      'login': instance.login.toJson(),
    };

RefreshToken$Mutation _$RefreshToken$MutationFromJson(
    Map<String, dynamic> json) {
  return RefreshToken$Mutation()..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic> _$RefreshToken$MutationToJson(
        RefreshToken$Mutation instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

CreateUserArguments _$CreateUserArgumentsFromJson(Map<String, dynamic> json) {
  return CreateUserArguments(
    email: json['email'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    nickName: json['nickName'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$CreateUserArgumentsToJson(
        CreateUserArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'nickName': instance.nickName,
      'password': instance.password,
    };

LoginArguments _$LoginArgumentsFromJson(Map<String, dynamic> json) {
  return LoginArguments(
    nickname: json['nickname'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginArgumentsToJson(LoginArguments instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'password': instance.password,
    };

RefreshTokenArguments _$RefreshTokenArgumentsFromJson(
    Map<String, dynamic> json) {
  return RefreshTokenArguments(
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$RefreshTokenArgumentsToJson(
        RefreshTokenArguments instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
