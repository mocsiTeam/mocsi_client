import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/rooms/create_room_form/create_room_form_bloc.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';
import 'package:mocsi_client/presentation/injection.dart';
import 'package:mocsi_client/presentation/rooms/widgets/create_room_form.dart';

class CreateRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.creatingNewRoom),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: BlocProvider<CreateRoomFormBloc>(
          create: (context) => getIt<CreateRoomFormBloc>(),
          child: CreateRoomForm(),
        ),
      ),
    );
  }
}
