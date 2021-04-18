import 'package:flutter/material.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';

class CreateRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.creatingNewRoom),
      ),
    );
  }
}
