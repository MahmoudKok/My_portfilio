import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    CodeKnowledgeModel(
      name: 'Python',
      percent: 50,
      photo: 'assets/images/flutter.png',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.computer,
                      color: kpink,
                      size: 60,
                    ),
                    headSection('My Code Knowledge'),
                  ],
                ),
                SizedBox(
                  height: setHightForDesktop(59),
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: List.generate(
                      codeknowledge.length,
                      (index) => CodingCard(
                            name: codeknowledge[index].name,
                            photo: codeknowledge[index].photo,
                            percent: codeknowledge[index].percent,
                          )),
                ),
                SizedBox(
                  height: setHightForDesktop(20),
                ),
              ],
            ),
          )),
    );
  }
}

class CodingCard extends StatefulWidget {
  CodingCard({
    Key? key,
    this.name,
    this.photo,
    this.percent,
  }) : super(key: key);
  final name;
  final photo;
  final percent;
  bool isOnHover = false;

  @override
  State<CodingCard> createState() => _CodingCardState();
}

class _CodingCardState extends State<CodingCard> {
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
                    ? setHightForDesktop(170)
                    : setHightForDesktop(160),
                width: widget.isOnHover
                    ? setWidthForDesktop(330)
                    : setWidthForDesktop(320),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: setHightForDesktop(200),
                        width: setWidthForDesktop(100),
                        child: AnimatedRate(percentage: widget.percent),
                      ),
                      Text(
                        '${widget.name}',
                        maxLines: 2,
                        softWrap: true,
                        style: GoogleFonts.signikaNegative(
                          fontSize: 40,
                          color: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
        height: setHightForDesktop(240),
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
                height: setHightForDesktop(200),
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
                            height: setHightForDesktop(60),
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
