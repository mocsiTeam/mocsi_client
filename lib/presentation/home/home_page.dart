import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';
import 'package:mocsi_client/presentation/home/widgets/bottom_navigation_bar.dart';
import 'package:mocsi_client/presentation/routes/app_router.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _getTranslatedPageName(String pageName) {
      if (pageName == kCalendar) {
        return I18n.calendar;
      } else if (pageName == kRooms) {
        return I18n.rooms;
      } else if (pageName == kProfile) {
        return I18n.profile;
      } else {
        return '';
      }
    }

    return AutoTabsRouter(
      routes: const [
        Calendar(),
        Rooms(),
        Profile(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          appBar: AppBar(
            title: Text(_getTranslatedPageName(tabsRouter.current!.name)),
          ),
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: bottomNavigationBar(tabsRouter),
        );
      },
    );
  }
}
