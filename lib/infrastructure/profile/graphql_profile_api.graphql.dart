// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';

part 'graphql_profile_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetUser$Query$User extends JsonSerializable with EquatableMixin {
  GetUser$Query$User();

  factory GetUser$Query$User.fromJson(Map<String, dynamic> json) =>
      _$GetUser$Query$UserFromJson(json);

  late String email;

  late String firstname;

  late String lastname;

  late String nickname;

  @override
  List<Object?> get props => [email, firstname, lastname, nickname];

  Map<String, dynamic> toJson() => _$GetUser$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUser$Query extends JsonSerializable with EquatableMixin {
  GetUser$Query();

  factory GetUser$Query.fromJson(Map<String, dynamic> json) =>
      _$GetUser$QueryFromJson(json);

  late GetUser$Query$User getAuthUser;

  @override
  List<Object?> get props => [getAuthUser];

  Map<String, dynamic> toJson() => _$GetUser$QueryToJson(this);
}

final GET_USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getAuthUser'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'firstname'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'lastname'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'nickname'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetUserQuery extends GraphQLQuery<GetUser$Query, JsonSerializable> {
  GetUserQuery();

  @override
  final DocumentNode document = GET_USER_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetUser';

  @override
  List<Object?> get props => [document, operationName];

  @override
  GetUser$Query parse(Map<String, dynamic> json) =>
      GetUser$Query.fromJson(json);
}
