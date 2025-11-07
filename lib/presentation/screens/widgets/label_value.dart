import 'package:flutter/material.dart';

class LabelValue extends StatelessWidget {
  const LabelValue({
    required this.textLabel,
    required this.icon,
    required this.value,
    super.key,
  });

  final String textLabel;
  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Icon(icon), Text(textLabel)]),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            value,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
