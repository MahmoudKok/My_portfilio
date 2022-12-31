import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * .1,
                  top: constraints.maxWidth * 0.1,
                ),
                child: Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
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
                          height: constraints.maxHeight * .01,
                        ),
                        Expanded(
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
                                width: constraints.maxWidth * .001,
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
                                height: constraints.maxHeight * .001,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: setHightForDesktop(20),
                        ),
                        Expanded(
                          child: const Text(
                            'Flutter developer',
                            style: TextStyle(
                              color: darkWihte,
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: setHightForDesktop(20),
                        ),
                        Expanded(
                          child: const Text(
                            'Contestant programmer',
                            style: TextStyle(
                              color: darkWihte,
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: setHightForDesktop(20),
                        ),
                        Expanded(
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
                                    height: constraints.maxHeight * .05,
                                    width: constraints.maxWidth * .1,
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
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/up_photo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
