import 'package:flutter/material.dart';

class AppConstant {
  //field

  static Color spcialColor = const Color.fromARGB(255, 115, 128, 20);

  static String appName = 'Ung\nTransport';

  static String pageAuthenMobile = '/authenMobile';
  static String pageAuthenWeb = '/authenWeb';
  static String pageMainDriver = '/mainDriver';
  static String pageMainCustomer = '/mainCustomer';

  //method

  BoxDecoration whiteCurveBox() {
    return const BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(100),
        bottomRight: Radius.circular(100),
      ),
      color: Colors.white,
    );
  }

  BoxDecoration imageBox({String? path}) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(path ?? 'images/bg1.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  TextStyle h1Style({double? size, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: size ?? 36,
      color: color,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  TextStyle h2Style({double? size, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: size ?? 20,
      color: color,
      fontWeight: fontWeight ?? FontWeight.w700,
    );
  }

  TextStyle h3Style({double? size, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: size ?? 14,
      color: color,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
