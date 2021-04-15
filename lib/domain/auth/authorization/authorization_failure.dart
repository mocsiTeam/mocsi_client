import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_failure.freezed.dart';

@freezed
class AuthorizationFailure with _$AuthorizationFailure {
  const factory AuthorizationFailure.userDoesNotExist() = UserDoesNotExist;
  const factory AuthorizationFailure.unexpectedError() = UnexpectedError;
}
