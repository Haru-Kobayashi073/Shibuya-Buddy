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
    // 必要に応じて増やしたり変更したりしてください
    final iconsMap = <String, IconData>{
      '電車': Icons.train,
      '徒歩': Icons.directions_walk,
      '車': Icons.directions_car,
      'バス': Icons.directions_bus,
    };
    return Wrap(
      spacing: 8, // チップ同士の横方向の間隔
      runSpacing: 8, // チップ同士の縦方向の間隔（折り返しが発生する場合）
      children: transportOptions.map((option) {
        final isSelected = selectedTransports.contains(option);
        final icon = iconsMap[option] ?? Icons.directions_transit; // デフォルト

        return FilterChip(
          backgroundColor: AppColor.blue50Background,
          side: BorderSide.none, // ボーダーを消す
          avatar: Icon(icon, size: 18, color: AppColor.blue800Secondary),
          label: Text(option),
          selected: isSelected,
          onSelected: (_) => onTransportSelected(option),
          showCheckmark: false,
        );
      }).toList(),
    );
  }
}
