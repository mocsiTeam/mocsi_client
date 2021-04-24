import 'package:dartz/dartz.dart';
import 'package:mocsi_client/domain/core/failures.dart';
import 'package:mocsi_client/domain/core/value_objects.dart';
import 'package:mocsi_client/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

class ConferenceUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ConferenceUrl.fromUrl(String url) {
    return ConferenceUrl._(right(url));
  }

  const ConferenceUrl._(
    this.value,
  );
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }
  const UniqueId._(
    this.value,
  );
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String value) {
    return Name._(
      value: validateName(value),
    );
  }

  const Name._({
    required this.value,
  });
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String value) {
    return Password._(
      value: validateRoomPassword(value),
    );
  }

  const Password._({
    required this.value,
  });
}
