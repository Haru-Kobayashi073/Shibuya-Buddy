import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/routes/app_router.dart';
import '../utils/styles/app_color.dart';
import '../utils/styles/app_text_style.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColor.white,
        appBarTheme: const AppBarTheme(backgroundColor: AppColor.white),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColor.white,
          indicatorColor: AppColor.blue50Background,
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            final style = AppTextStyle.textStyle
                .copyWith(color: AppColor.blue900Tertiary);
            if (states.contains(WidgetState.selected)) {
              return style.copyWith(
                color: AppColor.blue900Tertiary,
                fontWeight: FontWeight.bold,
              );
            }
            return style;
          }),
          iconTheme: WidgetStateProperty.all(
            const IconThemeData(
              color: AppColor.blue900Tertiary,
            ),
          ),
        ),
        useMaterial3: true,
      ),
      routerDelegate: goRouter.routerDelegate,
      routeInformationProvider: goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
