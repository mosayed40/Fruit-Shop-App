import 'package:ecommerce_app/core/constants.dart';
import 'package:ecommerce_app/core/utils/size_config.dart';
import 'package:ecommerce_app/core/widgets/custom_buttons.dart';
import 'package:ecommerce_app/core/widgets/custom_title_app.dart';
import 'package:ecommerce_app/core/widgets/space_widget.dart';
import 'package:ecommerce_app/features/Auth/presentation/pages/complete_information/complet_information_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
          child: Image.asset(kLogo),
        ),
        const SizedBox(height: 10),
        const CustomTitleApp(color: kMainColor),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(
                      () => const CompletInformationView(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                  color: const Color(0xffdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'Log in with',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(
                      () => const CompletInformationView(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                  color: const Color(0xff4267b2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with',
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
