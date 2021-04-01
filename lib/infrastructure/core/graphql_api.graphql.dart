// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetAuthUser$Query$User extends JsonSerializable with EquatableMixin {
  GetAuthUser$Query$User();

  factory GetAuthUser$Query$User.fromJson(Map<String, dynamic> json) =>
      _$GetAuthUser$Query$UserFromJson(json);

  late String email;

  late String error;

  @override
  List<Object?> get props => [email, error];
  Map<String, dynamic> toJson() => _$GetAuthUser$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAuthUser$Query extends JsonSerializable with EquatableMixin {
  GetAuthUser$Query();

  factory GetAuthUser$Query.fromJson(Map<String, dynamic> json) =>
      _$GetAuthUser$QueryFromJson(json);

  late GetAuthUser$Query$User getAuthUser;

  @override
  List<Object?> get props => [getAuthUser];
  Map<String, dynamic> toJson() => _$GetAuthUser$QueryToJson(this);
}

class GetAuthUserQuery
    extends GraphQLQuery<GetAuthUser$Query, JsonSerializable> {
  GetAuthUserQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'GetAuthUser'),
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
                    name: NameNode(value: 'error'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'GetAuthUser';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetAuthUser$Query parse(Map<String, dynamic> json) =>
      GetAuthUser$Query.fromJson(json);
}
