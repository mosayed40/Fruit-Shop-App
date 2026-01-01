import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({
    super.key,
    required this.text,
    this.maxLines,
    this.inputType,
    this.onSaved,
  });
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  final ValueSetter? onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff0c0b0b),
            height: 1.5625,
          ),
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: false,
          ),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(2),
        CustomTextFormField(
          onSaved: onSaved,
          inputType: inputType,
          maxLines: maxLines,
        ),
      ],
    );
  }
}
