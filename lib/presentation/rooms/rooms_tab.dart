import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class RoomsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(context.tabsRouter.current!.name);

          context.router.push(const CreateRoomPageRoute());
        },
        tooltip: I18n.createNewRoom,
        child: const Icon(Icons.add),
      ),
    );
  }
}
