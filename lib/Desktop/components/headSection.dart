import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHightForDesktop(1080),
      width: setWidthForDesktop(1920),
      child: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/appPart.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: setWidthForDesktop(105),
            top: setHightForDesktop(119),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: setHightForDesktop(90),
              width: setWidthForDesktop(200),
              child: const Text(
                'Hi,i\'m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            SizedBox(
              height: setHightForDesktop(20),
            ),
            SizedBox(
              height: setHightForDesktop(100),
              width: setWidthForDesktop(800),
              child: Row(
                children: [
                  Text(
                    'MAHMOUD',
                    style: TextStyle(
                      letterSpacing: setWidthForDesktop(10),
                      color: ktail3,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: setWidthForDesktop(10),
                  ),
                  Text(
                    'KOKEH',
                    style: TextStyle(
                      letterSpacing: setWidthForDesktop(5),
                      color: kyellow,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: setHightForDesktop(20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: setHightForDesktop(20),
            ),
            const Text(
              'Flutter developer',
              style: TextStyle(
                color: darkWihte,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: setHightForDesktop(20),
            ),
            const Text(
              'Contestant programmer',
              style: TextStyle(
                color: darkWihte,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: setHightForDesktop(20),
            ),
            SizedBox(
              height: setHightForDesktop(108),
              width: setWidthForDesktop(906),
              child: const Text(
                'lorem puaselorem puaselorem puaselorem puaselorem puaselorem puasepuaselorem puasepuaselorem puasepuaselorem puase',
                maxLines: 4,
                style: TextStyle(
                    color: darkWihte,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: setHightForDesktop(66),
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
                              'Download CV',
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
                )),
          ]),
        ),
      ]),
    );
  }
}
