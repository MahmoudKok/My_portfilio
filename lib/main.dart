//import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:my_portfile2/Desktop/DesktopScreen.dart';
import 'package:my_portfile2/Desktop/components/aboutMeSection.dart';
import 'package:my_portfile2/Desktop/components/headSection.dart';
import 'package:my_portfile2/MainScreen.dart';
import 'package:my_portfile2/Mobile/mobile.dart';
import 'package:my_portfile2/constant.dart';
import 'package:my_portfile2/sizeConfig.dart';
import 'package:my_portfile2/testScreen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';

import 'Desktop/components/move.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      darkTheme: Theme.of(context).copyWith(platform: TargetPlatform.android),
      builder: (context, widget) {
        return ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.resize(1200, name: '4K'),
          ],
          background: Container(
            color: kbackground,
          ),
        );
      },
      home: const HeadSection(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF434343),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          SizedBox(
            height: 120,
            width: double.infinity,
            child: Image.asset(
              'images/top.png',
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                  left: 20,
                  top: 20,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 45,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 160,
                      bottom: 10,
                      top: 20,
                      left: 30,
                    ),
                    child: Text(
                      'Hi , My name is ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 30),
                    child: Text(
                      'Mahmoud kokeh',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Flutter developer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '|',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          'Contestsant programming',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      )),
    );
  }

  // ignore: non_constant_identifier_names
  TextStyle MainWords() {
    return const TextStyle(
      color: Colors.white60,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
