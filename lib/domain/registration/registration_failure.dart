import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_failure.freezed.dart';

@freezed
class RegistrationFailure with _$RegistrationFailure {
  const factory RegistrationFailure.nameAlreadyInUseError() =
      NameAlreadyInUseError;
  const factory RegistrationFailure.emailAlreadyInUseError() =
      EmailAlreadyInUseError;
  const factory RegistrationFailure.noConnectionError() = NoConnectionError;
  const factory RegistrationFailure.serverError() = ServerError;
  const factory RegistrationFailure.unexpectedError() = UnexpectedError;
}
