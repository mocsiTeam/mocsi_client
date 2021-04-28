import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/profile/profile_bloc.dart';
import 'package:mocsi_client/presentation/injection.dart';
import 'package:mocsi_client/presentation/profile/widgets/profile_body.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<ProfileBloc>(
        create: (context) =>
            getIt<ProfileBloc>()..add(const ProfileEvent.profileOpened()),
        child: ProfileBody(),
      ),
    );
  }
}
