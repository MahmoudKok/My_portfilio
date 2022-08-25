import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(62.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: setHightForDesktop(692),
                  width: setWidthForDesktop(557),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/appPart.png',
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
                      width: setWidthForDesktop(23),
                    ),
                    headSection('About me'),
                    SizedBox(
                      height: setHightForDesktop(54),
                    ),
                    SizedBox(
                      height: setHightForDesktop(311),
                      width: setWidthForDesktop(1068),
                      child: Text(
                        'i\'m study Third year of IT (Information technology) engener at Damascus unversite in damascus , also i\'m contestant programming in ICPC competeteve.',
                        maxLines: 10,
                        style: TextStyle(
                            color: darkgrey1,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: setHightForDesktop(25),
                    ),
                    SizedBox(
                      height: setHightForDesktop(311),
                      width: setWidthForDesktop(1068),
                      child: const Text(
                        'MAHM',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
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
        ),
      ),
    );
  }
}
