import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'infrastructure/firebase/firebase_auth_state_listener.dart';
import 'presentation/components/loading_overlay.dart';
import 'utils/routes/app_router.dart';

class StartUpPage extends HookConsumerWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(firebaseAuthStateListenerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      user.when(
        data: (user) {
          if (user != null) {
            context.go(const HomeScreenRouteData().location);
          } else {
            context.go(const SignInPageRouteData().location);
          }
        },
        error: (e, s) => const SizedBox(),
        loading: () => const Loading(),
      );
    });

    return const Scaffold(
      body: Loading(),
    );
  }
}
