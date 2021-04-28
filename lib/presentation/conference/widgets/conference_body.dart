import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/conference/conference_bloc.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';

class ConferenceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConferenceBloc, ConferenceState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (state) => Container(),
          conferenceJoined: (state) => Center(
            child: Column(
              children: [
                Image.asset('assets/mocsi_mascot.png'),
                Text(I18n.conferenceOnAir),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<ConferenceBloc>()
                        .add(ConferenceEvent.conferenceOpened(state.room));
                  },
                  child: Text(I18n.join),
                ),
                TextButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  child: Text(I18n.toMainMenu),
                ),
              ],
            ),
          ),
          errorWhileJoining: (state) => Center(
            child: Column(
              children: [
                const Icon(Icons.error, size: 200),
                Text(I18n.couldNotEnterConference),
              ],
            ),
          ),
          conferenceLoading: (state) => Center(
            child: Column(
              children: [
                const RefreshProgressIndicator(),
                Text(I18n.conferenceLoading),
              ],
            ),
          ),
          conferenceTerminated: (state) => Center(
            child: Text(I18n.conferenceEnded),
          ),
        );
      },
    );
  }
}
