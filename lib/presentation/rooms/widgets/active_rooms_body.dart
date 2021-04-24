import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/rooms/active_rooms/active_rooms_bloc.dart';
import 'package:mocsi_client/presentation/rooms/widgets/failure_widget.dart';

import 'active_rooms_list.dart';

class ActiveRoomsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActiveRoomsBloc, ActiveRoomsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: RefreshProgressIndicator()),
          loadSuccess: (state) => ActiveRoomsList(
            rooms: state.activeRooms,
          ),
          loadFailure: (state) => FailureWidget(
            failure: state.failure,
          ),
        );
      },
    );
  }
}
