// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';

part 'graphql_rooms_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateRoom$Mutation$Room extends JsonSerializable with EquatableMixin {
  CreateRoom$Mutation$Room();

  factory CreateRoom$Mutation$Room.fromJson(Map<String, dynamic> json) =>
      _$CreateRoom$Mutation$RoomFromJson(json);

  late String error;

  @override
  List<Object?> get props => [error];
  Map<String, dynamic> toJson() => _$CreateRoom$Mutation$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateRoom$Mutation extends JsonSerializable with EquatableMixin {
  CreateRoom$Mutation();

  factory CreateRoom$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateRoom$MutationFromJson(json);

  late CreateRoom$Mutation$Room createRoom;

  @override
  List<Object?> get props => [createRoom];
  Map<String, dynamic> toJson() => _$CreateRoom$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMyRooms$Query$Room extends JsonSerializable with EquatableMixin {
  GetMyRooms$Query$Room();

  factory GetMyRooms$Query$Room.fromJson(Map<String, dynamic> json) =>
      _$GetMyRooms$Query$RoomFromJson(json);

  late String error;

  late String name;

  late String link;

  @override
  List<Object?> get props => [error, name, link];
  Map<String, dynamic> toJson() => _$GetMyRooms$Query$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetMyRooms$Query extends JsonSerializable with EquatableMixin {
  GetMyRooms$Query();

  factory GetMyRooms$Query.fromJson(Map<String, dynamic> json) =>
      _$GetMyRooms$QueryFromJson(json);

  List<GetMyRooms$Query$Room>? getMyRooms;

  @override
  List<Object?> get props => [getMyRooms];
  Map<String, dynamic> toJson() => _$GetMyRooms$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateRoomArguments extends JsonSerializable with EquatableMixin {
  CreateRoomArguments({required this.name, required this.password});

  @override
  factory CreateRoomArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomArgumentsFromJson(json);

  late String name;

  late String password;

  @override
  List<Object?> get props => [name, password];
  @override
  Map<String, dynamic> toJson() => _$CreateRoomArgumentsToJson(this);
}

final CREATE_ROOM_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateRoom'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createRoom'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: VariableNode(name: NameNode(value: 'name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'password'),
                        value: VariableNode(name: NameNode(value: 'password')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'error'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class CreateRoomMutation
    extends GraphQLQuery<CreateRoom$Mutation, CreateRoomArguments> {
  CreateRoomMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_ROOM_MUTATION_DOCUMENT;

  @override
  final String operationName = 'CreateRoom';

  @override
  final CreateRoomArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateRoom$Mutation parse(Map<String, dynamic> json) =>
      CreateRoom$Mutation.fromJson(json);
}

final GET_MY_ROOMS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetMyRooms'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getMyRooms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'error'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'link'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetMyRoomsQuery extends GraphQLQuery<GetMyRooms$Query, JsonSerializable> {
  GetMyRoomsQuery();

  @override
  final DocumentNode document = GET_MY_ROOMS_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetMyRooms';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetMyRooms$Query parse(Map<String, dynamic> json) =>
      GetMyRooms$Query.fromJson(json);
}
