import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
  const SectionTitleWidget({
    super.key,
    required this.label,
    required this.fontsize,
    required this.onPressed,
    required this.iconSize,
    });

  final String label;
  final double fontsize;
  final GestureTapCallback onPressed;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_forward_ios),
            iconSize: iconSize,
          ),
        ],
      ),
    );
  }
}
