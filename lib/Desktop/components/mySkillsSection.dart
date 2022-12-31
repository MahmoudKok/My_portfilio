import 'package:flutter/material.dart';
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
      explain:
          'Solve programming problems using algorthim and data structur sience',
      photo: 'assets/images/ui_ux.png',
      name: 'Problem solving',
    ),
    SkillModel(
      explain: 'Create and develop mobile apps using flutter framework',
      photo: 'assets/images/app_dev.png',
      name: 'Apps developing',
    ),
    SkillModel(
      explain: 'Contestant at ICPC competitive programming contests',
      photo: 'assets/images/problem_solve.png',
      name: 'CP',
    ),
    SkillModel(
      explain:
          'Handle with Api\'s and build full apps with backend and database',
      photo: 'assets/images/restApi.png',
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
          child: Column(children: [
            headSection('My Skills'),
            SizedBox(
              height: setHightForDesktop(59),
            ),
            SizedBox(
              height: setHightForDesktop(850),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: setHightForDesktop(40),
                  crossAxisSpacing: setWidthForDesktop(54),
                  mainAxisExtent: setHightForDesktop(260),
                  crossAxisCount: 2,
                ),
                itemCount: mySkills.length,
                itemBuilder: (BuildContext context, int index) {
                  return SkillCard(
                    name: mySkills[index].name,
                    exlplain: mySkills[index].explain,
                    photo: mySkills[index].photo,
                  );
                },
              ),
            ),
          ]),
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
      height: setHightForDesktop(230),
      width: setWidthForDesktop(850.5),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(
                  color: kpink, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: setHightForDesktop(240),
              width: setWidthForDesktop(795.5),
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
                          height: setHightForDesktop(120),
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
                  Container(
                    height: setHightForDesktop(167),
                    width: setWidthForDesktop(167),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(photo),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
