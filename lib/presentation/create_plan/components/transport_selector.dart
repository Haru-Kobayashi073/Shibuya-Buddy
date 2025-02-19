import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../utils/styles/app_color.dart';

/// 交通手段の選択を行うカスタムウィジェット（多言語対応）
/// 日本語、英語、韓国語、簡体字・繁体字中国語に対応します。
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
    // 多言語対応のため、各交通手段の名称を複数言語のバリアントとして定義
    final iconsMap = <Set<String>, IconData>{
      {'Train', '電車', '지하철', '火车', '火車'}: Symbols.train,
      {'Walking', '徒歩', '걷기', '步行'}: Symbols.directions_walk,
      {'Car', '車', '차', '汽车', '汽車'}: Symbols.directions_car,
      {'Bus', 'バス', '버스', '巴士'}: Symbols.directions_bus,
    };

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: transportOptions.map((option) {
        final isSelected = selectedTransports.contains(option);
        // 各エントリのキー集合に指定のオプションが含まれているかでアイコンを決定
        final icon = iconsMap.entries
            .firstWhere(
              (entry) => entry.key.contains(option),
              orElse: () =>
                  const MapEntry(<String>{}, Symbols.directions_transit),
            )
            .value;

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
                      color: AppColor.black,
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
