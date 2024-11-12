import 'package:flutter/material.dart';

class Radiobuttontext extends StatelessWidget {
  const Radiobuttontext({
    super.key,
    required this.title,
    required this.value,
    required this.numberOfTopics,
  });
  final String text;
  final String value;
  final String groupValue;
  final String type; //仮名
  final String type_onChange; //仮名

  @override
  // Widget build(BuildContext context) {
  //   return ListTile(
  //             title: Text(text),
  //             leading: Radio<type>(
  //               value: value,
  //               groupValue: groupValue,
  //               onChanged: (type? value) {
  //                 debugPrint('TapJapanese');
  //               },
  //             ),
  //           );
//   }
// }