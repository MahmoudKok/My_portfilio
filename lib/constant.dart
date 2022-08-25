import 'dart:ui';

import 'package:flutter/material.dart';

const kdarkgrey = Color.fromARGB(255, 58, 58, 58);

const kbackground = Color(0xff222222);
const kcomponentBackground = Color(0xff161515);
const darkgrey2 = Color(0xff414141);
const darkgrey1 = Color(0xff828282);

const darkWihte = Color(0xffE4E4E4);

const ktail1 = Color(0xFF044343);
const ktail2 = Color(0xFF045757);
const ktail3 = Color(0xFF37e2d5);

const kyellow = Color(0xffFBCB0A);
const kpurble = Color(0xff590696);
const kpink = Color(0xffC70A80);

Text headSection(String label) {
  return Text(
    label,
    style: const TextStyle(
        color: darkWihte, fontSize: 70, fontWeight: FontWeight.normal),
  );
}
