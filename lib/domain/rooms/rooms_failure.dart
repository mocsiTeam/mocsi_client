import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_failure.freezed.dart';

@freezed
class RoomsFailure with _$RoomsFailure {
  const factory RoomsFailure.noConnectionError() = NoConnectionError;
  const factory RoomsFailure.serverError() = ServerError;
  const factory RoomsFailure.unexpectedError() = UnexpectedError;
}
