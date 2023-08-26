// ignore: file_names
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:my_portfile2/Mobile/Common.dart';
import 'package:my_portfile2/constant.dart';
import 'package:my_portfile2/sizeConfig.dart';

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
        value: value / 100, // Defaults to 0.5.
        valueColor: const AlwaysStoppedAnimation(
            kpink), // Defaults to the current Theme's accentColor.
        backgroundColor: kyellow,
        // Defaults to the current Theme's backgroundColor.

        borderRadius: 15,
        direction: Axis
            .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
        center: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          child: Text((value).toInt().toString() + "%",
              style: GoogleFonts.signikaNegative(
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
        ),
      ),
    );
  }
}
