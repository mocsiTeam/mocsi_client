import 'package:flutter/material.dart';
import 'package:mocsi_client/domain/rooms/rooms_failure.dart';

class FailureWidget extends StatelessWidget {
  final RoomsFailure failure;

  const FailureWidget({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(failure.toString()));
  }
}
