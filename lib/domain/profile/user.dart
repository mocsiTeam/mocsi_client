import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required FirstName firstName,
    required LastName lastName,
    required NickName nickName,
    required EmailAddress emailAddress,
  }) = _User;
}
