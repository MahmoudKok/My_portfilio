import 'package:flutter/material.dart';
import 'package:my_portfile2/constant.dart';
import 'package:my_portfile2/sizeConfig.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackground,
        body: SizedBox(
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  height: getProportionateScreenHeight(300),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(10),
                          top: getProportionateScreenHeight(30),
                        ),
                        child: Text(
                          'Hi, i\'m ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w200),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(10),
                          bottom: getProportionateScreenHeight(10),
                        ),
                        child: Text(
                          'Mahmoud kokeh ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(50),
                        width: getProportionateScreenHeight(200),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(10),
                            bottom: getProportionateScreenHeight(10),
                          ),
                          child: Center(
                            child: Text(
                              'Flutter Developer ',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blueGrey.shade800,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(100),
                        width: getProportionateScreenHeight(300),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(10),
                            bottom: getProportionateScreenHeight(10),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Programming contestant',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.blueGrey.shade800,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: getProportionateScreenWidth(30),
                      ),
                      child: Container(
                        height: getProportionateScreenHeight(200),
                        width: getProportionateScreenWidth(100),
                        color: Colors.redAccent,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
