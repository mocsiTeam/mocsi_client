import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/auth_bloc.dart';
import 'package:mocsi_client/application/profile/profile_bloc.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (state) => Container(),
          loading: (state) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Icon(Icons.person, size: 100),
                Text(
                  state.user.nickName.getOrCrash(),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '${state.user.firstName.getOrCrash()} ${state.user.lastName.getOrCrash()} ',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  state.user.emailAddress.getOrCrash(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const Divider(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.signedOut());
                      context.router.pushAndRemoveUntil(const SignInPageRoute(),
                          predicate: (_) => false);
                    },
                    child: Text(I18n.signOut),
                  ),
                ),
              ],
            ),
          ),
          loadFailure: (state) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(I18n.serverError),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                    context.router.pushAndRemoveUntil(const SignInPageRoute(),
                        predicate: (_) => false);
                  },
                  child: Text(I18n.signOut),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
