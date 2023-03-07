import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: kcomponentBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 62, right: 62),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: kpink,
                    size: 60,
                  ),
                  headSection('About me'),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: setHightForDesktop(800),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/me.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: setWidthForDesktop(120),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: setHightForDesktop(20),
                        ),
                        Text(
                          'I am studying the fourth year in informatics engineering at the Department of Artificial Intelligence at Damascus University.\nI work as a software developer using Flutter framework with good experience for more than a year. Also, I am a contestant in the global competition for competitive programming (ICPC) for three years. I am good at coding, dealing with software problems, using appropriate algorithms, and solving problems.',
                          maxLines: 10,
                          style: TextStyle(
                              color: darkgrey1,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: setHightForDesktop(25),
                        ),
                        Text(
                          'MAHM',
                          style: GoogleFonts.lobster(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: setHightForDesktop(107),
                          width: setWidthForDesktop(337),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: kpink,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: MaterialButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  child: Container(
                                    height: setHightForDesktop(101),
                                    width: setWidthForDesktop(330),
                                    decoration: BoxDecoration(
                                      color: kyellow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Hire Me',
                                        style: TextStyle(
                                            color: kpurble,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
