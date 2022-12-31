import 'package:flutter/material.dart';
import 'package:my_portfile2/Desktop/components/MyProjectSection.dart';
import 'package:my_portfile2/Desktop/components/aboutMeSection.dart';
import 'package:my_portfile2/Desktop/components/ciretifesntsSection.dart';
import 'package:my_portfile2/Desktop/components/contactSection.dart';
import 'package:my_portfile2/Desktop/components/move.dart';
import 'package:my_portfile2/Desktop/components/myCodingKnowledge.dart';
import 'package:my_portfile2/Desktop/components/mySkillsSection.dart';
import 'package:my_portfile2/constant.dart';
import 'package:my_portfile2/sizeConfig.dart';

import 'components/headSection.dart';
import 'components/myExperinceSection.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: kbackground,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            HeadSection(),
          ],
        ),
      ),
    ));
  }
}
