import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfile2/constant.dart';

class Move extends StatelessWidget {
  const Move({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double hi = constraints.maxHeight;
          double wi = constraints.maxWidth;
          return Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: kcomponentBackground,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: wi * .02,
                  vertical: hi * .01,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            scale: 16 / 9,
                            image: AssetImage(
                              'assets/images/up_photo.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: wi * .1,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 1,
                            child: headSection('About me'),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'I am a competitive programmer, skilled in problem solving, algorithms and data structures, Contestant at ICPC - International Collegiate\nProgramming Contest.\nFlutter Developer and My experience includes\nFirebase Auth, Dart, Local Storage, version\ncontrol such as Git and GitHub, Connecting\nFlutter applications to back-ends, Bloc, Getx.',
                              maxLines: 10,
                              style: GoogleFonts.habibi(
                                  color: darkgrey1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(height: hi * .01),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'MAHM',
                              style: GoogleFonts.arizonia(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: hi * .1,
                            width: wi * .2,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: kpink,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: MaterialButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {},
                                    child: Container(
                                      height: hi * .1 - 5,
                                      width: wi * .2 - 5,
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
        },
      ),
    );
  }
}
