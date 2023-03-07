import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfile2/Desktop/DesktopModels/SkillModel.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class MySkillsSection extends StatelessWidget {
  MySkillsSection({
    Key? key,
  }) : super(key: key);

  List<SkillModel> mySkills = [
    SkillModel(
      name: 'Git',
      explain: 'Desing interfaces for web sites and mobiles apps',
      photo: 'assets/images/github.png',
    ),
    SkillModel(
      name: 'Algorithm',
      photo: 'images/algo.png',
    ),
    SkillModel(
      name: 'AI',
      photo: 'images/ai.png',
    ),
    SkillModel(
      explain:
          'Solve programming problems using algorthim and data structur sience',
      photo: 'assets/images/problem_solving.png',
      name: 'Problem solving',
    ),
    SkillModel(
      explain:
          'Solve programming problems using algorthim and data structur sience',
      photo: 'assets/images/search_ai.png',
      name: 'Ai Search\nAlgorithms',
    ),
    SkillModel(
      explain: 'Create and develop mobile apps using flutter framework',
      photo: 'assets/images/app_develop.png',
      name: 'Apps developing',
    ),
    SkillModel(
      explain: 'Contestant at ICPC competitive programming contests',
      photo: 'assets/images/cp.png',
      name: 'Competitive\nProgramming',
    ),
    SkillModel(
      explain:
          'Handle with Api\'s and build full apps with backend and database',
      photo: 'images/resfulApi.png',
      name: 'RestFull API\'s',
    ),
    SkillModel(
      name: 'Firebase',
      explain:
          'using firebase and creating app with Firebase as backend , handling with Firebase storage and real time database',
      photo: 'assets/images/firebaselogo.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: kcomponentBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: setHightForDesktop(38),
            left: setWidthForDesktop(75),
            right: setWidthForDesktop(75),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.workspace_premium_outlined,
                  color: kpink,
                  size: 60,
                ),
                headSection('My Skills'),
              ],
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: List.generate(
                mySkills.length,
                (index) => SkillsCard(
                  name: mySkills[index].name,
                  photo: mySkills[index].photo,
                ),
              ),
            ),
            SizedBox(
              height: setHightForDesktop(20),
            )
          ]),
        ),
      ),
    );
  }
}

class SkillsCard extends StatefulWidget {
  SkillsCard({
    Key? key,
    this.name,
    this.photo,
  }) : super(key: key);
  final name;
  final photo;
  bool isOnHover = false;

  @override
  State<SkillsCard> createState() => _SkillsCardState();
}

class _SkillsCardState extends State<SkillsCard> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (s) {
        setState(() {
          widget.isOnHover = true;
        });
      },
      onExit: (s) {
        setState(() {
          widget.isOnHover = false;
        });
      },
      child: Container(
        width: setWidthForDesktop(320),
        decoration: BoxDecoration(
          color: widget.isOnHover ? konhoverpurble : kdarkpurble,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: widget.isOnHover
                      ? setHightForDesktop(130)
                      : setHightForDesktop(120),
                  width: widget.isOnHover
                      ? setWidthForDesktop(160)
                      : setWidthForDesktop(150),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${widget.photo}'),
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: widget.isOnHover
                    ? setHightForDesktop(110)
                    : setHightForDesktop(100),
                width: widget.isOnHover
                    ? setWidthForDesktop(210)
                    : setWidthForDesktop(200),
                child: Center(
                  child: FittedBox(
                    child: Text(
                      '${widget.name}',
                      maxLines: 2,
                      softWrap: true,
                      style: GoogleFonts.signikaNegative(
                        fontSize: 25,
                        color: white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  SkillCard({
    Key? key,
    this.exlplain,
    this.name,
    this.photo,
  }) : super(key: key);
  final name;
  final exlplain;
  final photo;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHightForDesktop(240),
      width: setWidthForDesktop(845.5),
      child: Container(
        decoration: BoxDecoration(
            color: kpink, borderRadius: BorderRadius.circular(10)),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            height: setHightForDesktop(230),
            width: setWidthForDesktop(820.5),
            decoration: BoxDecoration(
              color: kyellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: setWidthForDesktop(33),
                    top: setHightForDesktop(15),
                  ),
                  child: Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$name',
                          style: TextStyle(
                              color: kpurble,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: setHightForDesktop(10),
                        ),
                        SizedBox(
                          height: setHightForDesktop(125),
                          width: setWidthForDesktop(565),
                          child: Text(
                            '$exlplain',
                            maxLines: 5,
                            style: TextStyle(
                                color: darkgrey2,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: setHightForDesktop(167),
                    width: setWidthForDesktop(167),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(photo),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
