import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';

part 'conference_user.freezed.dart';

@freezed
class ConferenceUser with _$ConferenceUser {
  const ConferenceUser._();

  const factory ConferenceUser({
    required FirstName firstName,
    required LastName lastName,
    required EmailAddress emailAddress,
  }) = _ConferenceUser;
}
