import 'package:flutter/material.dart';
import 'package:my_portfile2/Desktop/DesktopModels/codeKnowledgeModel.dart';
import 'package:my_portfile2/constant.dart';
import 'package:my_portfile2/sizeConfig.dart';

import '../../AnimatedRate.dart';

class MyCodeingKnowledge extends StatelessWidget {
  MyCodeingKnowledge({Key? key}) : super(key: key);

  @override
  List<CodeKnowledgeModel> codeknowledge = [
    CodeKnowledgeModel(
      name: 'Flutter',
      percent: 50,
      photo: 'assets/images/flutter.png',
    ),
    CodeKnowledgeModel(
      name: 'Dart',
      percent: 50,
      photo: 'assets/images/dart.png',
    ),
    CodeKnowledgeModel(
      name: 'C++',
      percent: 80,
      photo: 'assets/images/c++.png',
    ),
    CodeKnowledgeModel(
      name: 'Java',
      percent: 60,
      photo: 'assets/images/java.png',
    ),
  ];
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
              left: setWidthForDesktop(57.8),
              right: setWidthForDesktop(57.8),
            ),
            child: Column(
              children: [
                headSection('My Code Knowledge'),
                SizedBox(
                  height: setHightForDesktop(59),
                ),
                SizedBox(
                  height: setHightForDesktop(530),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: setHightForDesktop(40),
                      crossAxisSpacing: setWidthForDesktop(54),
                      mainAxisExtent: setHightForDesktop(290),
                      crossAxisCount: 2,
                    ),
                    itemCount: codeknowledge.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CodeKnowledgeCard(
                        name: codeknowledge[index].name,
                        precent: codeknowledge[index].percent,
                        photo: codeknowledge[index].photo,
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class CodeKnowledgeCard extends StatelessWidget {
  CodeKnowledgeCard({
    Key? key,
    this.name,
    this.photo,
    this.precent,
  }) : super(key: key);
  final name;
  final photo;
  final precent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: setHightForDesktop(20), bottom: setHightForDesktop(20)),
      child: SizedBox(
        height: setHightForDesktop(250),
        width: setWidthForDesktop(845.5),
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
                width: setWidthForDesktop(805.5),
                decoration: BoxDecoration(
                  color: kyellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: setWidthForDesktop(46),
                        ),
                        child: Container(
                          height: setHightForDesktop(167),
                          width: setWidthForDesktop(167),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(photo),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: setWidthForDesktop(20),
                      ),
                      Column(
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
                            height: setHightForDesktop(20),
                          ),
                          Container(
                            height: setHightForDesktop(80),
                            width: setWidthForDesktop(554),
                            child: AnimatedRate(percentage: precent),
                          ),
                        ],
                      )
                    ],
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
