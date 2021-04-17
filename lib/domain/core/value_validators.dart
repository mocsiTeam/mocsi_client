import 'package:dartz/dartz.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

const int kPasswordMaxLength = 6;
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= kPasswordMaxLength) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

const int kNameMaxLength = 2;
Either<ValueFailure<String>, String> validateName(String input) {
  if (input.length >= kNameMaxLength) {
    return right(input);
  } else {
    return left(ValueFailure.shortName(failedValue: input));
  }
}
