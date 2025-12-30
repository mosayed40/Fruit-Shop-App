import 'package:ecommerce_app/features/onBoarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          title: 'E Shopping',
          subTitle: 'Explor  top organic fruits & grab them',
          image: 'assets/images/on_boarding_1.jpg',
        ),
        PageViewItem(
          title: 'Delivert on the way',
          subTitle: 'Get your order by speed delivery',
          image: 'assets/images/on_boarding_2.png',
        ),
        PageViewItem(
          title: 'Delivery Arrived',
          subTitle: 'Order is delivery at your place',
          image: 'assets/images/on_boarding_3.jpg',
        ),
      ],
    );
  }
}
