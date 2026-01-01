import 'package:ecommerce_app/core/utils/size_config.dart';
import 'package:ecommerce_app/core/widgets/custom_title_app.dart';
import 'package:ecommerce_app/features/onBoarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    fadingAnimation = Tween<double>(
      begin: .2,
      end: 1,
    ).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: CustomTitleApp(color: Colors.white),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          height: Get.height / 2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_view_image.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }
}
