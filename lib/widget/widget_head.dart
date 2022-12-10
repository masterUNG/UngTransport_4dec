import 'package:flutter/material.dart';
import 'package:ungtransport/utility/app_constant.dart';
import 'package:ungtransport/widget/widget_image.dart';
import 'package:ungtransport/widget/widget_text.dart';

class WidgetHead extends StatelessWidget {
  const WidgetHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          child: const WidgetImage(
            size: 80,
          ),
        ),
        WidgetText(
          text: AppConstant.appName,
          textStyle: AppConstant().h1Style(
            color: AppConstant.spcialColor,
            size: 30,
          ),
        ),
      ],
    );
  }
}