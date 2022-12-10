import 'package:flutter/material.dart';
import 'package:ungtransport/utility/app_constant.dart';
import 'package:ungtransport/widget/widget_button.dart';
import 'package:ungtransport/widget/widget_form.dart';
import 'package:ungtransport/widget/widget_head.dart';

class AuthenWeb extends StatelessWidget {
  const AuthenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: AppConstant().imageBox(path: 'images/bg2.jpg'),
          ),
          Container(decoration: AppConstant().whiteCurveBox(),
            padding: const EdgeInsets.only(top: 50, bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  child: Column(mainAxisSize: MainAxisSize.min,
                    children: [
                      WidgetHead(),
                      Row(
                        children: [
                          WidgetForm(
                            width: 245,
                            hint: 'Email :',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          WidgetForm(
                            width: 245,
                            hint: 'Password :',
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          WidgetButton(
                            size: 250,
                            label: 'Login',
                            pressFunc: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
