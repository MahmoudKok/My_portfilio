import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfile2/Desktop/DesktopModels/MyProjectModel.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class MyProjectsSection extends StatelessWidget {
  MyProjectsSection({Key? key}) : super(key: key);

  @override
  List<ProjectModel> projects = [
    ProjectModel(
      photo: 'assets/images/SchoolMate.jpg',
      name: 'School Mate',
      explain:
          'Is a project to mange schools in profisonal way and keep students, teachers , parents and school in touch!\n The app diveded in rolls to give free experment to anyone use the app\n students can do all thier school activties online! and teachers do thie jop with more help\n the app has an admin panel to controll everything in one place',
    ),
    ProjectModel(
      photo: 'assets/images/cheap_shop.jpg',
      name: 'Cheap Shop',
      explain:
          'E-commerce market built to buy and sell the proudcts whose about to expire\nhas a lot of features like search on product , search by category, and even contact with customers and seller with comments on proudct!',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.work,
                    color: kpink,
                    size: 60,
                  ),
                  headSection('My recent Project'),
                ],
              ),
              SizedBox(
                height: setHightForDesktop(62),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyProjectCard extends StatefulWidget {
  MyProjectCard({
    Key? key,
    this.explain,
    this.name,
    this.photo,
    this.ishover = false,
  }) : super(key: key);
  final name;
  final explain;
  final photo;
  bool ishover = false;

  @override
  State<MyProjectCard> createState() => _MyProjectCardState();
}

class _MyProjectCardState extends State<MyProjectCard> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (s) {
        setState(() {
          widget.ishover = true;
        });
      },
      onExit: (s) {
        setState(() {
          widget.ishover = false;
        });
      },
      child: Container(
        height: setHightForDesktop(700),
        width: setWidthForDesktop(585),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Container(
              height: widget.ishover
                  ? setHightForDesktop(620)
                  : setHightForDesktop(310),
              width: setWidthForDesktop(585),
              decoration: BoxDecoration(
                color: kyellow,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(widget.photo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: setHightForDesktop(25),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: setWidthForDesktop(20),
                top: setHightForDesktop(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: setHightForDesktop(75),
                    width: setWidthForDesktop(585),
                    child: Text(
                      '${widget.name}',
                      style: TextStyle(
                        color: kpurble,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: setHightForDesktop(5),
                  ),
                  Visibility(
                    visible: !widget.ishover,
                    child: SizedBox(
                      height: setHightForDesktop(250),
                      width: setWidthForDesktop(585),
                      child: Text(widget.explain,
                          maxLines: 10,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.firaSans(
                            color: darkgrey2,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
