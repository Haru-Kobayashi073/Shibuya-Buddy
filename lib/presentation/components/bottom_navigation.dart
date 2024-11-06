import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (int index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Symbols.home),
            label: 'ホーム',
          ),
          NavigationDestination(
            icon: Icon(Symbols.bookmark_flag),
            label: 'マイプラン',
          ),
          NavigationDestination(
            icon: Icon(Symbols.account_circle),
            label: 'マイページ',
          ),
        ],
      ),
      body: navigationShell,
    );
  }
}
