import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mocsi_client/domain/rooms/value_objects.dart';

part 'room.freezed.dart';

@freezed
class Room with _$Room {
  const Room._();

  const factory Room({
    required ConferenceUrl url,
    required Name name,
    required Password password,
  }) = _Room;

  factory Room.empty() => Room(
        url: ConferenceUrl.fromUrl(''),
        name: Name(''),
        password: Password(''),
      );

  // Option<ValueFailure<dynamic>> get failureOption {
  //   return;
  // }
}
