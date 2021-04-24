import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';
import 'package:mocsi_client/domain/conference/i_conference_facade.dart';
import 'package:mocsi_client/domain/rooms/room.dart';

part 'conference_bloc.freezed.dart';
part 'conference_event.dart';
part 'conference_state.dart';

const String kJitsiApi = 'https://www.jmteam.tk/external_api.js';

@injectable
class ConferenceBloc extends Bloc<ConferenceEvent, ConferenceState> {
  final Logger _logger;
  final IAuthFacade _authFacade;
  final IConferenceFacade _conferenceFacade;

  ConferenceBloc(
    this._logger,
    this._authFacade,
    this._conferenceFacade,
  ) : super(const ConferenceState.initial());

  @override
  Stream<ConferenceState> mapEventToState(ConferenceEvent event) async* {
    yield* event.map(
      conferenceOpened: (state) async* {
        _logger.i(state);

        final failureOrToken = await _authFacade.signIn();
        yield await failureOrToken
            .fold((failure) => const ConferenceState.errorWhileJoining(),
                (token) async {
          final failureOrUser =
              await _conferenceFacade.getConferenceUser(token);
          return await failureOrUser
              .fold((failure) => const ConferenceState.errorWhileJoining(),
                  (user) async {
            try {
              final options = JitsiMeetingOptions(
                room: state.room.uniqueName.getOrCrash(),
              )
                ..serverURL = kJitsiApi
                ..userDisplayName =
                    '${user.firstName.getOrCrash()} ${user.lastName.getOrCrash()}'
                ..userEmail = user.emailAddress.getOrCrash()
                ..subject = state.room.name.getOrCrash();
              await JitsiMeet.joinMeeting(options);
              return const ConferenceState.conferenceJoined();
            } on Exception catch (e) {
              _logger.e(e.toString());
              return const ConferenceState.errorWhileJoining();
            }
          });
        });
      },
    );
  }
}
