import 'package:dartz/dartz.dart';

import 'package:mocsi_client/domain/core/failures.dart';
import 'package:mocsi_client/domain/core/value_objects.dart';
import 'package:mocsi_client/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String value) {
    return EmailAddress._(
      value: validateEmailAddress(value),
    );
  }

  const EmailAddress._({
    required this.value,
  });
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String value) {
    return Password._(
      value: validatePassword(value),
    );
  }

  const Password._({
    required this.value,
  });
}

class NickName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NickName(String value) {
    return NickName._(
      value: validateName(value),
    );
  }

  const NickName._({
    required this.value,
  });
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String value) {
    return FirstName._(
      value: validateName(value),
    );
  }

  const FirstName._({
    required this.value,
  });
}

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastName(String value) {
    return LastName._(
      value: validateName(value),
    );
  }

  const LastName._({
    required this.value,
  });
}
