import 'package:ecommerce_app/core/widgets/custom_buttons.dart';
import 'package:ecommerce_app/core/widgets/space_widget.dart';
import 'package:ecommerce_app/features/Auth/presentation/pages/complete_information/widgets/complete_information_items.dart';
import 'package:flutter/material.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(11),
        CompleteInfoItem(text: 'Enter your name'),
        VerticalSpace(2),
        CompleteInfoItem(text: 'Enter your phone number'),
        VerticalSpace(2),
        CompleteInfoItem(maxLines: 5, text: 'Enter your address'),
        VerticalSpace(6),
        CustomGeneralButton(text: 'Login'),
      ],
    );
  }
}
