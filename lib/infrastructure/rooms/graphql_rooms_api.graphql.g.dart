// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_rooms_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRoom$Mutation$Room _$CreateRoom$Mutation$RoomFromJson(
    Map<String, dynamic> json) {
  return CreateRoom$Mutation$Room()..error = json['error'] as String;
}

Map<String, dynamic> _$CreateRoom$Mutation$RoomToJson(
        CreateRoom$Mutation$Room instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

CreateRoom$Mutation _$CreateRoom$MutationFromJson(Map<String, dynamic> json) {
  return CreateRoom$Mutation()
    ..createRoom = CreateRoom$Mutation$Room.fromJson(
        json['createRoom'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateRoom$MutationToJson(
        CreateRoom$Mutation instance) =>
    <String, dynamic>{
      'createRoom': instance.createRoom.toJson(),
    };

GetMyRooms$Query$Room _$GetMyRooms$Query$RoomFromJson(
    Map<String, dynamic> json) {
  return GetMyRooms$Query$Room()
    ..error = json['error'] as String
    ..name = json['name'] as String
    ..link = json['link'] as String;
}

Map<String, dynamic> _$GetMyRooms$Query$RoomToJson(
        GetMyRooms$Query$Room instance) =>
    <String, dynamic>{
      'error': instance.error,
      'name': instance.name,
      'link': instance.link,
    };

GetMyRooms$Query _$GetMyRooms$QueryFromJson(Map<String, dynamic> json) {
  return GetMyRooms$Query()
    ..getMyRooms = (json['getMyRooms'] as List<dynamic>?)
        ?.map((e) => GetMyRooms$Query$Room.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$GetMyRooms$QueryToJson(GetMyRooms$Query instance) =>
    <String, dynamic>{
      'getMyRooms': instance.getMyRooms?.map((e) => e.toJson()).toList(),
    };

CreateRoomArguments _$CreateRoomArgumentsFromJson(Map<String, dynamic> json) {
  return CreateRoomArguments(
    name: json['name'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$CreateRoomArgumentsToJson(
        CreateRoomArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
    };
