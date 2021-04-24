import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/rooms/active_rooms/active_rooms_bloc.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';
import 'package:mocsi_client/presentation/injection.dart';
import 'package:mocsi_client/presentation/rooms/widgets/active_rooms_body.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class RoomsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<ActiveRoomsBloc>(
        create: (context) =>
            getIt<ActiveRoomsBloc>()..add(const ActiveRoomsEvent.opened()),
        child: ActiveRoomsBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const CreateRoomPageRoute());
        },
        tooltip: I18n.createNewRoom,
        child: const Icon(Icons.add),
      ),
    );
  }
}
