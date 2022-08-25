import 'package:flutter/material.dart';
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
              headSection('My Experince'),
              SizedBox(
                height: setHightForDesktop(62),
              ),
              SizedBox(
                width: setWidthForDesktop(2300),
                height: setHightForDesktop(900),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: experince.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: setWidthForDesktop(100),
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return MyExperinceCard(
                      name: experince[index].name,
                      explain: experince[index].explain,
                      photo: experince[index].photo,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyExperinceCard extends StatelessWidget {
  MyExperinceCard({
    Key? key,
    this.explain,
    this.name,
    this.photo,
  }) : super(key: key);
  final name;
  final explain;
  final photo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHightForDesktop(871),
      width: setWidthForDesktop(1056),
      child: Stack(
        children: [
          Container(
            height: setHightForDesktop(871),
            width: setWidthForDesktop(1056),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Column(
              children: [
                Container(
                  height: setHightForDesktop(436),
                  width: setWidthForDesktop(1056),
                  decoration: BoxDecoration(
                      color: darkWihte,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(photo),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: setHightForDesktop(39),
                ),
                SizedBox(
                  height: setHightForDesktop(100),
                  width: setWidthForDesktop(1005),
                  child: Text(
                    '$name',
                    style: TextStyle(
                      color: kpurble,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: setHightForDesktop(15),
                ),
                SizedBox(
                  height: setHightForDesktop(250),
                  width: setWidthForDesktop(1005),
                  child: Text(
                    explain,
                    maxLines: 10,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: darkgrey2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
