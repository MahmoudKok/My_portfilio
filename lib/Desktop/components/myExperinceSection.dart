import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfile2/Desktop/DesktopModels/ExpirenceModel.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class MyExperinceSection extends StatelessWidget {
  MyExperinceSection({Key? key}) : super(key: key);

  List<ExperinceModel> experince = [
    ExperinceModel(
      name: 'ICPC',
      explain:
          'Solved more than 300 problem about Dynamic programming,data structure and mathematics\nTwo years participant in the ICPC programming competition.',
      photo: 'assets/images/icpc.jpg',
    ),
    ExperinceModel(
      name: 'Flutter',
      explain:
          '1+ years of experience as a professional Flutter developer\nMy experience includes Firebase Firestore, Dart, Local Storage, version control such as Git and GitHub, Connecting Flutter applications to back-ends, json_serializable, Bloc, Getx.',
      photo: 'assets/images/flutter_bird.png',
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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.work,
                    color: kpink,
                    size: 60,
                  ),
                  headSection('My Experince'),
                ],
              ),
              SizedBox(
                height: setHightForDesktop(62),
              ),
              SizedBox(
                  width: setWidthForDesktop(2300),
                  child: Center(
                    child: Wrap(
                      children: List.generate(
                          experince.length,
                          (index) => Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: MyExperinceCard(
                                  name: experince[index].name,
                                  explain: experince[index].explain,
                                  photo: experince[index].photo,
                                ),
                              )),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class MyExperinceCard extends StatefulWidget {
  MyExperinceCard({
    Key? key,
    this.explain,
    this.name,
    this.photo,
    this.isHover = false,
  }) : super(key: key);
  final name;
  final explain;
  final photo;
  bool isHover = false;

  @override
  State<MyExperinceCard> createState() => _MyExperinceCardState();
}

class _MyExperinceCardState extends State<MyExperinceCard> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (s) {
        setState(() {
          widget.isHover = true;
        });
      },
      onExit: (s) {
        setState(() {
          widget.isHover = false;
        });
      },
      child: Container(
        height: setHightForDesktop(871),
        width: setWidthForDesktop(1056),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: widget.isHover
            ? Stack(
                children: [
                  Container(
                    height: setHightForDesktop(871),
                    width: setWidthForDesktop(1056),
                    decoration: BoxDecoration(
                      color: darkWihte,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(widget.photo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
                      child: Container(
                        height: setHightForDesktop(871),
                        width: setWidthForDesktop(1056),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white.withOpacity(0.65),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                // height: setHightForDesktop(100),
                                // width: setWidthForDesktop(1005),
                                child: Text('${widget.name}',
                                    style: GoogleFonts.headlandOne(
                                      color: kpurble,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              SizedBox(
                                height: setHightForDesktop(15),
                              ),
                              Text(widget.explain,
                                  maxLines: 10,
                                  overflow: TextOverflow.fade,
                                  style: GoogleFonts.firaSans(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Container(
                height: setHightForDesktop(871),
                width: setWidthForDesktop(1056),
                decoration: BoxDecoration(
                  color: darkWihte,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(widget.photo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      ),
    );
  }
}
