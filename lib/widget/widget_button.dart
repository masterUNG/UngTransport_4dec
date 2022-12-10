// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ungtransport/utility/app_constant.dart';
import 'package:ungtransport/widget/widget_text.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    Key? key,
    required this.label,
    required this.pressFunc,
    this.color,
    this.size,
  }) : super(key: key);

  final String label;
  final Function() pressFunc;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(width: size,
      margin: const EdgeInsets.only(top: 8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? const Color.fromARGB(255, 70, 54, 6)),
          onPressed: pressFunc,
          child: WidgetText(
            text: label,
            textStyle: AppConstant().h3Style(color: Colors.white),
          )),
    );
  }
}
