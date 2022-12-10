// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ungtransport/utility/app_constant.dart';

class WidgetForm extends StatelessWidget {
  const WidgetForm({
    Key? key,
    this.textInputType,
    this.textInputFormaters,
    this.hint,
    this.width,
  }) : super(key: key);

  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormaters;
  final String? hint;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(width: width,
      margin: const EdgeInsets.only(top: 16),
      child: TextFormField(
        inputFormatters: textInputFormaters,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintStyle: AppConstant().h3Style(color: Colors.grey.shade400),
          hintText: hint,
          filled: true,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
