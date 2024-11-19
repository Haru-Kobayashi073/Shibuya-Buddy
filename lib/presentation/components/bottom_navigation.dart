import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../i18n/strings.g.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final navigationBarItemi18n = i18n.navigationBar.items;

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (int index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Symbols.home),
            label: navigationBarItemi18n.home,
          ),
          NavigationDestination(
            icon: const Icon(Symbols.bookmark_flag),
            label: navigationBarItemi18n.myPlan,
          ),
          NavigationDestination(
            icon: const Icon(Symbols.account_circle),
            label: navigationBarItemi18n.myPage,
          ),
        ],
      ),
      body: navigationShell,
    );
  }
}
