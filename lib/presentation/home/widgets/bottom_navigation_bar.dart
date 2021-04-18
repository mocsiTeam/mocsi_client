import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';

BottomNavigationBar bottomNavigationBar(TabsRouter tabsRouter) {
  return BottomNavigationBar(
    currentIndex: tabsRouter.activeIndex,
    onTap: (index) {
      tabsRouter.setActiveIndex(index);
    },
    items: [
      BottomNavigationBarItem(
        icon: const Icon(Icons.event),
        label: I18n.calendar,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.video_call),
        label: I18n.rooms,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        label: I18n.profile,
      ),
    ],
  );
}
