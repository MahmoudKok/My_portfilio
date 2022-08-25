import 'package:flutter/material.dart';
import 'package:my_portfile2/Desktop/DesktopModels/MyProjectModel.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class MyProjectsSection extends StatelessWidget {
  MyProjectsSection({Key? key}) : super(key: key);

  @override
  List<ProjectModel> projects = [
    ProjectModel(
      photo: 'assets/images/icpc.jpg',
      name: 'CheapShope',
      explain: 'lap lap lap lap lap lap lap \n\n\nlap ',
    ),
    ProjectModel(
      photo: 'assets/images/SchoolMate.jpg',
      name: 'CheapShope',
      explain: 'lap lap lap lap lap lap lap \n\n\nlap ',
    ),
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: setWidthForDesktop(1882),
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
              headSection('My recent Project'),
              SizedBox(
                height: setHightForDesktop(62),
              ),
              SizedBox(
                height: setHightForDesktop(800),
                width: setWidthForDesktop(1900),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: projects.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: setWidthForDesktop(100),
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return MyProjectCard(
                      name: projects[index].name,
                      explain: projects[index].explain,
                      photo: projects[index].photo,
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

class MyProjectCard extends StatelessWidget {
  MyProjectCard({
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
      height: setHightForDesktop(700),
      width: setWidthForDesktop(585),
      child: Stack(
        children: [
          Container(
            height: setHightForDesktop(700),
            width: setWidthForDesktop(585),
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
                  height: setHightForDesktop(310),
                  width: setWidthForDesktop(585),
                  decoration: BoxDecoration(
                    color: kyellow,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(photo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: setHightForDesktop(39),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: setWidthForDesktop(20),
                    top: setHightForDesktop(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: setHightForDesktop(100),
                        width: setWidthForDesktop(585),
                        child: Text(
                          '$name',
                          style: TextStyle(
                            color: kpurble,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: setHightForDesktop(15),
                      ),
                      SizedBox(
                        height: setHightForDesktop(200),
                        width: setWidthForDesktop(585),
                        child: Text(
                          explain,
                          maxLines: 10,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            color: darkgrey2,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
