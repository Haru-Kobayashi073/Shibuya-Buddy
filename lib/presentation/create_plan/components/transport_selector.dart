import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';

/// 交通手段の選択を行うカスタムウィジェット
class TransportSelector extends StatelessWidget {
  const TransportSelector({
    super.key,
    required this.transportOptions,
    required this.selectedTransports,
    required this.onTransportSelected,
  });

  /// 交通手段の候補リスト
  final List<String> transportOptions;

  /// 現在選択されている交通手段（複数選択可）
  final List<String> selectedTransports;

  /// 交通手段がタップされたときに呼び出されるコールバック
  final void Function(String transport) onTransportSelected;

  @override
  Widget build(BuildContext context) {
    // 交通手段に対応するアイコンをマッピング
    final iconsMap = <String, IconData>{
      'Train': Icons.train,
      'Car': Icons.directions_car,
      '車': Icons.directions_car,
      'バス': Icons.directions_bus,
    };

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: transportOptions.map((option) {
        final isSelected = selectedTransports.contains(option);
        final icon = iconsMap[option] ?? Icons.directions_transit;

        return TransportButton(
          option: option,
          icon: icon,
          isSelected: isSelected,
          onTap: () => onTransportSelected(option),
        );
      }).toList(),
    );
  }
}

class TransportButton extends StatelessWidget {
  const TransportButton({
    super.key,
    required this.option,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  final String option;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: AppColor.grey400,
        highlightColor: Colors.transparent,
      ),
      child: Material(
        color: AppColor.blue50Background,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              border: isSelected
                  ? Border.all(color: AppColor.blue800Secondary)
                  : null,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    size: 24,
                    color: AppColor.blue800Secondary,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    option,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColor.blue800Secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
