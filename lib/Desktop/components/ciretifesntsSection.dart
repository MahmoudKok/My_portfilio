import 'package:flutter/material.dart';
import 'package:my_portfile2/Desktop/DesktopModels/CiretifesntsModel.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class CiretifesntsSection extends StatelessWidget {
  CiretifesntsSection({Key? key}) : super(key: key);

  List<CiretifesntsModel> ciretifesnts = [
    CiretifesntsModel(name: 'DCPC 2022'),
    CiretifesntsModel(name: 'DCPC 2022'),
    CiretifesntsModel(name: 'DCPC 2022'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
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
              headSection('My Ciretifesnts'),
              SizedBox(
                height: setHightForDesktop(30),
              ),
              SizedBox(
                height: setHightForDesktop(1050),
                width: setWidthForDesktop(1882),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: ciretifesnts.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: setWidthForDesktop(85),
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return MyCiretifesntsCard(
                      name: ciretifesnts[index].name,
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

class MyCiretifesntsCard extends StatelessWidget {
  MyCiretifesntsCard({
    Key? key,
    this.name,
    this.photo,
  }) : super(key: key);
  final name;
  final photo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHightForDesktop(920),
      width: setWidthForDesktop(1575),
      child: Stack(
        children: [
          Container(
            height: setHightForDesktop(930),
            width: setWidthForDesktop(1575),
            decoration: BoxDecoration(
              color: kyellow,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: setHightForDesktop(900),
                width: setWidthForDesktop(1575),
                decoration: BoxDecoration(
                  color: darkWihte,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: setHightForDesktop(120),
                    width: setWidthForDesktop(1575),
                    decoration: BoxDecoration(
                        color: darkgrey2.withOpacity(0.20),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )),
                    child: Center(
                      child: Text(
                        '$name',
                        style: TextStyle(
                          color: darkgrey2,
                          fontSize: 60,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
