import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import 'analytics_event.dart';
import 'providers/analytics/analytics.dart';

final logger = CustomLogger();

/// ログ出力をカスタマイズします。
///
/// t,dはconsoleに出力します。
/// i,wはFBAにログを送信します。
/// (wは集計して、どのユーザが遭遇しているかをみたい。)
/// e,fはFirebaseCrashlyticsにログを送信します。
class CustomLogger extends Logger {
  CustomLogger()
      : super(
          output: CustomOutput(),
          printer: PrettyPrinter(
            methodCount: 1, // 表示されるコールスタックの数
            errorMethodCount: 5, // 表示されるスタックトレースのコールスタックの数
            lineLength: 80, // 区切りラインの長さ
            dateTimeFormat: DateTimeFormat.dateAndTime,
          ),
          level: kReleaseMode ? Level.info : Level.trace,
        );

  void error(
    dynamic message, {
    required String methodName,
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kReleaseMode) {
      unawaited(
        AnalyticsNotifier().logEvent(
          UserActionEvent.customError,
          parameters: {
            'error': error.toString(),
            'stackTrace': stackTrace.toString(),
            'errorBy': methodName,
          },
        ),
      );
    } else {
      super.e(
        message,
        time: time,
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}

/// log出力をカスタマイズします。
///
/// デフォルトではiOSにて色が出力されないため、修正します。
class CustomOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    // log出します。
    for (final e in event.lines) {
      dev.log(e, name: 'logger');
    }
  }
}
