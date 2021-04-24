import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/conference/conference_bloc.dart';

class ConferenceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConferenceBloc, ConferenceState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container();
      },
    );
  }
}
