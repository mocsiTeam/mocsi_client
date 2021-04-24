import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/conference/conference_bloc.dart';
import 'package:mocsi_client/domain/rooms/room.dart';
import 'package:mocsi_client/presentation/conference/widgets/conference_body.dart';
import 'package:mocsi_client/presentation/injection.dart';

class ConferencePage extends StatelessWidget {
  final Room conferenceRoom;

  const ConferencePage({
    Key? key,
    required this.conferenceRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(conferenceRoom.name.getOrCrash()),
      ),
      body: BlocProvider<ConferenceBloc>(
          create: (context) => getIt<ConferenceBloc>()
            ..add(
              ConferenceEvent.conferenceOpened(conferenceRoom),
            ),
          child: ConferenceBody()),
    );
  }
}
