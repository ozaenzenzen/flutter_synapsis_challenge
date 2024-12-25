import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  final double height;
  final Color color;
  final Color backgroundColor;
  final double? value;

  const CustomLinearProgressIndicator({
    Key? key,
    this.height = 8.0,
    this.color = Colors.blue,
    this.backgroundColor = Colors.grey,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(height / 2),
      child: LinearProgressIndicator(
        minHeight: height,
        value: value, // Set the value for determinate progress
        valueColor: AlwaysStoppedAnimation<Color>(color),
        backgroundColor: backgroundColor,
      ),
    );
  }
}