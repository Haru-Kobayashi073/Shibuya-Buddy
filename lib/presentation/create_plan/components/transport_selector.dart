import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../utils/styles/app_color.dart';

class TransportSelector extends StatelessWidget {
  const TransportSelector({
    super.key,
    required this.transportOptions,
    required this.selectedTransports,
    required this.onTransportSelected,
  });

  final List<String> transportOptions;
  final List<String> selectedTransports;
  final ValueChanged<String> onTransportSelected;

  static const _iconList = <IconData>[
    Symbols.train,
    Symbols.directions_walk,
    Symbols.directions_car,
    Symbols.directions_bus,
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(transportOptions.length, (index) {
        final option = transportOptions[index];
        final isSelected = selectedTransports.contains(option);
        final icon = index < _iconList.length
            ? _iconList[index]
            : Symbols.directions_transit;
        return TransportButton(
          option: option,
          icon: icon,
          isSelected: isSelected,
          onTap: () => onTransportSelected(option),
        );
      }),
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
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 24, color: AppColor.blue800Secondary),
                const SizedBox(height: 4),
                Text(
                  option,
                  style: const TextStyle(fontSize: 12, color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
