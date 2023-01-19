// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SateType extends StatelessWidget {
  final String sateType;
  final bool isSelected;
  final VoidCallback onTap;

  SateType({
    required this.sateType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          sateType,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
