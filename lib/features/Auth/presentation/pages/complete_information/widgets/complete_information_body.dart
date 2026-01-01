import 'package:ecommerce_app/core/widgets/custom_buttons.dart';
import 'package:ecommerce_app/core/widgets/space_widget.dart';
import 'package:ecommerce_app/features/Auth/presentation/pages/complete_information/widgets/complete_information_items.dart';
import 'package:flutter/material.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const VerticalSpace(11),
        const CompleteInfoItem(text: 'Enter your name'),
        const VerticalSpace(2),
        const CompleteInfoItem(
          text: 'Enter your phone number',
          inputType: TextInputType.number,
        ),
        const VerticalSpace(2),
        const CompleteInfoItem(maxLines: 5, text: 'Enter your address'),
        const VerticalSpace(6),
        CustomGeneralButton(onTap: () {}, text: 'Login'),
      ],
    );
  }
}
