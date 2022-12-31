import 'package:flutter/material.dart';
import 'package:my_portfile2/constant.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: constraints.maxWidth * .7,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: constraints.maxWidth * .3,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellowAccent,
                    ))
              ],
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    height: constraints.maxWidth * .7,
                    color: Colors.blueAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: constraints.maxWidth * .3,
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
