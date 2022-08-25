// ignore: file_names
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:my_portfile2/Mobile/Common.dart';
import 'package:my_portfile2/constant.dart';

class AnimatedRate extends StatelessWidget {
  const AnimatedRate({Key? key, required this.percentage, this.label})
      : super(key: key);
  final double percentage;
  final label;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percentage),
      duration: const Duration(seconds: 2),
      builder: (context, double value, child) => LiquidLinearProgressIndicator(
        borderColor: darkgrey1,
        value: value / 100, // Defaults to 0.5.
        valueColor: const AlwaysStoppedAnimation(
            ktail1), // Defaults to the current Theme's accentColor.
        backgroundColor: ktail3,
        // Defaults to the current Theme's backgroundColor.

        borderWidth: 1,
        borderRadius: 15,
        direction: Axis
            .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
        center: Text((value).toInt().toString() + "%",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            )),
      ),
    );
  }
}
