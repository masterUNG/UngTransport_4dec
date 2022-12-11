import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ungtransport/utility/app_constant.dart';
import 'package:ungtransport/utility/app_service.dart';
import 'package:ungtransport/widget/widget_button.dart';
import 'package:ungtransport/widget/widget_form.dart';
import 'package:ungtransport/widget/widget_head.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  void initState() {
    super.initState();
    AppService().aboutNoti();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: AppConstant().imageBox(),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50, bottom: 60),
              decoration: AppConstant().whiteCurveBox(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 270,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const WidgetHead(),
                        WidgetForm(
                          hint: '081-123-4568',
                          textInputFormaters: [
                            MaskTextInputFormatter(mask: '###-###-####')
                          ],
                          textInputType: TextInputType.phone,
                        ),
                        WidgetButton(
                          size: 270,
                          label: 'Login',
                          pressFunc: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
