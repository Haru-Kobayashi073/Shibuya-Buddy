import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../i18n/strings.g.dart';
import '../utils/providers/locale/locale_service.dart';
import '../utils/routes/app_router.dart';
import '../utils/styles/app_color.dart';
import '../utils/styles/app_text_style.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final currentLocale = ref.watch(localeServiceProvider);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await ref
              .read(localeServiceProvider.notifier)
              .changeLocaleToPreviousValue();
        });
        return null;
      },
      const [],
    );

    return MaterialApp.router(
      locale: currentLocale.flutterLocale,
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
