import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ungtransport/state_mobile/authen.dart';
import 'package:ungtransport/state_mobile/main_customer.dart';
import 'package:ungtransport/state_mobile/main_driver.dart';
import 'package:ungtransport/state_web/authen_web.dart';
import 'package:ungtransport/utility/app_constant.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

var getPages = <GetPage<dynamic>>[
  GetPage(
    name: AppConstant.pageAuthenMobile,
    page: () => const Authen(),
  ),
  GetPage(
    name: AppConstant.pageAuthenWeb,
    page: () => const AuthenWeb(),
  ),
  GetPage(
    name: AppConstant.pageMainDriver,
    page: () => const MainDriver(),
  ),
  GetPage(
    name: AppConstant.pageMainCustomer,
    page: () => const MainCustomer(),
  ),
];

String keyPage = AppConstant.pageAuthenMobile;

void main() {
  if (kIsWeb) {
    keyPage = AppConstant.pageAuthenWeb;
  }



  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: getPages,
      initialRoute: keyPage,
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
