import 'package:flutter/material.dart';
import 'package:my_portfile2/Desktop/DesktopModels/contactModel.dart';

import '../../constant.dart';
import '../../sizeConfig.dart';

class ContactSection extends StatelessWidget {
  ContactSection({Key? key}) : super(key: key);

  @override
  List<ContactModel> contacts = [
    ContactModel(
      photo: 'assets/images/contact/facebookgif.gif',
      url: 'https://www.facebook.com/profile.php?id=100009444702867',
    ),
    ContactModel(
      photo: 'assets/images/contact/telegramgif.gif',
      url: 'https://t.me/Mahmoud_kok',
    ),
    ContactModel(
      photo: 'assets/images/contact/whatsappgif.gif',
      url: '///',
    ),
    ContactModel(
      photo: 'assets/images/contact/gethubgif.gif',
      url: 'mahmoudkoka39@gmail.com',
    ),
    ContactModel(
      photo: 'assets/images/contact/linkingif.gif',
      url: 'https://www.linkedin.com/in/mahmod-koka-20a155214/',
    ),
  ];
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
              headSection('Contact with me'),
              SizedBox(
                height: setHightForDesktop(50),
              ),
              SizedBox(
                width: setWidthForDesktop(1900),
                height: setHightForDesktop(250),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ContactCicle(
                      photo: 'assets/images/contact/facebookgif.gif',
                      url:
                          'https://www.facebook.com/profile.php?id=100009444702867',
                      color: kpink,
                    ),
                    ContactCicle(
                      photo: 'assets/images/contact/telegramgif.gif',
                      url: 'https://t.me/Mahmoud_kok',
                      color: kpink,
                    ),
                    ContactCicle(
                      photo: 'assets/images/contact/whatsappgif.gif',
                      url: '///',
                      color: kpink,
                    ),
                    ContactCicle(
                      photo: 'assets/images/contact/gethubgif.gif',
                      url: 'mahmoudkoka39@gmail.com',
                      color: kpink,
                    ),
                    ContactCicle(
                      photo: 'assets/images/contact/linkingif.gif',
                      url: 'https://www.linkedin.com/in/mahmod-koka-20a155214/',
                      color: kpink,
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCicle extends StatelessWidget {
  ContactCicle({
    Key? key,
    this.color,
    this.photo,
    this.url,
  }) : super(key: key);
  final color;
  final photo;
  final url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHightForDesktop(200),
      width: setWidthForDesktop(200),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kyellow,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(photo),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
