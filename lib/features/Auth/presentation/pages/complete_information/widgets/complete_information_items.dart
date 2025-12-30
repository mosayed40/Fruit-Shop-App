import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({
    super.key,
    required this.text,
    this.maxLines,
    this.inputType,
  });
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xff0c0b0b),
            height: 1.5625,
          ),
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: false,
          ),
          textAlign: TextAlign.center,
        ),
        VerticalSpace(2),
        CustomTextFormField(inputType: inputType, maxLines: maxLines),
      ],
    );
  }
}
