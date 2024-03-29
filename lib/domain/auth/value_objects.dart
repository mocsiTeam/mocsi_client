import 'package:dartz/dartz.dart';
import 'package:mocsi_client/domain/core/failures.dart';
import 'package:mocsi_client/domain/core/value_objects.dart';

class AccessToken extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AccessToken(String value) {
    return AccessToken._(
      right(value),
    );
  }

  const AccessToken._(this.value);
}

class RefreshToken extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RefreshToken(String value) {
    return RefreshToken._(
      right(value),
    );
  }

  const RefreshToken._(this.value);
}
