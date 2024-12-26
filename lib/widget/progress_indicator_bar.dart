import 'package:flutter/material.dart';

class ProgressIndicatorBar extends StatelessWidget {
  final double progress; // Progress value (0.0 to 1.0)
  final Color backgroundColor; // Color for the background bar
  final Color progressColor; // Color for the progress bar
  final double height; // Height of the progress bar
  final double width; // Width of the progress bar

  const ProgressIndicatorBar({
    Key? key,
    required this.progress,
    required this.backgroundColor,
    required this.progressColor,
    this.height = 10,
    this.width = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: progress,
            child: Container(
              decoration: BoxDecoration(
                color: progressColor,
                borderRadius: BorderRadius.circular(height / 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
