import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocsi_client/application/rooms/active_rooms/active_rooms_bloc.dart';
import 'package:mocsi_client/domain/rooms/room.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class ActiveRoomsList extends StatelessWidget {
  final KtList<Room> rooms;

  const ActiveRoomsList({
    Key? key,
    required this.rooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ActiveRoomsBloc>().add(const ActiveRoomsEvent.opened());
      },
      child: ListView.builder(
        itemCount: rooms.size,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                context.router.push(
                    ConferencePageRoute(conferenceRoom: rooms.get(index)));
              },
              child: ListTile(
                title: Text(rooms.get(index).name.getOrCrash()),
              ),
            ),
          );
        },
      ),
    );
  }
}
