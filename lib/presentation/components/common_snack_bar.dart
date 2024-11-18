import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';

class CommonSnackBar extends SnackBar {
  CommonSnackBar({
    super.key,
    required String message,
    super.backgroundColor = AppColor.blue50Background,
    required super.duration,
    bool isSuccess = true,
  }) : super(
          content: Row(
            children: [
              if (isSuccess)
                const Icon(
                  Icons.check_rounded,
                  color: Colors.green,
                )
              else
                const Icon(
                  Icons.error_outline_outlined,
                  color: Colors.red,
                ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  message,
                  style: TextStyle(
                    color: isSuccess ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
        );
}
