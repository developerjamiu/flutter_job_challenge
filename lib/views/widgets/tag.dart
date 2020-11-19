import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String label;

  const Tag({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(0xFFEEEEEE),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 11.0,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
