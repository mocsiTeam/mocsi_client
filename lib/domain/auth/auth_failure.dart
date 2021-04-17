import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.tokenDoesNotExist() = UserDoesNotExist;
  const factory AuthFailure.noConnectionError() = NoConnectionError;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.unexpectedError() = UnexpectedError;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
