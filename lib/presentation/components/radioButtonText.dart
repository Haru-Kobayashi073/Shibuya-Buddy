// import 'package:flutter/material.dart';

// class RadiobuttonText extends StatefulWidget {
//   const RadiobuttonText({
//     super.key,
//     required this.title,
//     required this.value,
//     required this.groupValue,
//     required this.onChanged, // 修正：型をFunctionに
//   });

//   final String title;
//   final String value;
//   final String groupValue;
//   final Function(String?) onChanged;
//   @override
//   State<RadiobuttonText> createState() => _RadiobuttonTextState();
// }

// class _RadiobuttonTextState extends State<RadiobuttonText> {
//   set groupValue(String groupValue) {}

//  // 修正：String?型の引数を取るコールバック
//   @override
//   Widget build(BuildContext context) {
//     return RadioListTile<String>(
//       title: Text(widget.title),
//       value: widget.value,
//       groupValue: widget.groupValue,
//       onChanged: (selectedValue) {
//         if (selectedValue != null) {
//           setState(() {
//             groupValue = selectedValue;
//           });
//           widget.onChanged(selectedValue); // 修正：コールバック呼び出し
//         }
//       },
//     );
//   }
// }
