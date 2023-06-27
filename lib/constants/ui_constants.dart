import 'package:chirp/constants/constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: Image.asset(
        AssetsConstants.twitterLogo,
        width: 40,
        height: 40,
      ),
      centerTitle: true,
    );
  }
}
