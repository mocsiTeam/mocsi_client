import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mocsi_client/application/rooms/create_room_form/create_room_form_bloc.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';

class CreateRoomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateRoomFormBloc, CreateRoomFormState>(
      listener: (context, state) {
        state.createRoomFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                    (failure) => {
                          FlushbarHelper.createError(
                              message: failure.map(
                            noConnectionError: (_) => I18n.noConnectionError,
                            serverError: (_) => I18n.serverError,
                            unexpectedError: (_) => I18n.unexpectedError,
                          )).show(context)
                        }, (r) {
                  Fluttertoast.showToast(msg: I18n.roomCreated);
                  context.router.pop();
                }));
      },
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: ListView(
              children: [
                const SizedBox(height: 18),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: I18n.name,
                  ),
                  keyboardType: TextInputType.name,
                  onChanged: (value) => context
                      .read<CreateRoomFormBloc>()
                      .add(CreateRoomFormEvent.nameChanged(value)),
                  validator: (_) =>
                      context.read<CreateRoomFormBloc>().state.name.value.fold(
                            (failure) => failure.maybeMap(
                              shortName: (_) => I18n.invalidName,
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: I18n.password,
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<CreateRoomFormBloc>()
                      .add(CreateRoomFormEvent.passwordChanged(value)),
                  validator: (_) => context
                      .read<CreateRoomFormBloc>()
                      .state
                      .password
                      .value
                      .fold(
                        (failure) => failure.maybeMap(
                          shortName: (_) => I18n.invalidPassword,
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('!');
                    context
                        .read<CreateRoomFormBloc>()
                        .add(const CreateRoomFormEvent.createRoomPressed());
                  },
                  child: Text(I18n.save),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
