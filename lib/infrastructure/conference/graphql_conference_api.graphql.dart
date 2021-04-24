// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';

part 'graphql_conference_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetUserInfo$Query$User extends JsonSerializable with EquatableMixin {
  GetUserInfo$Query$User();

  factory GetUserInfo$Query$User.fromJson(Map<String, dynamic> json) =>
      _$GetUserInfo$Query$UserFromJson(json);

  late String firstname;

  late String lastname;

  late String email;

  @override
  List<Object?> get props => [firstname, lastname, email];
  Map<String, dynamic> toJson() => _$GetUserInfo$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUserInfo$Query extends JsonSerializable with EquatableMixin {
  GetUserInfo$Query();

  factory GetUserInfo$Query.fromJson(Map<String, dynamic> json) =>
      _$GetUserInfo$QueryFromJson(json);

  late GetUserInfo$Query$User getAuthUser;

  @override
  List<Object?> get props => [getAuthUser];
  Map<String, dynamic> toJson() => _$GetUserInfo$QueryToJson(this);
}

final GET_USER_INFO_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUserInfo'),
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
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetUserInfoQuery
    extends GraphQLQuery<GetUserInfo$Query, JsonSerializable> {
  GetUserInfoQuery();

  @override
  final DocumentNode document = GET_USER_INFO_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetUserInfo';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetUserInfo$Query parse(Map<String, dynamic> json) =>
      GetUserInfo$Query.fromJson(json);
}
