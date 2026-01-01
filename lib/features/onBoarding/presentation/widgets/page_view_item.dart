import 'package:ecommerce_app/core/utils/size_config.dart';
import 'package:ecommerce_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String? image;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
          height: SizeConfig.defaultSize! * 35,
          child: Image.asset(image!),
        ),
        const VerticalSpace(2),
        Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(
          subTitle!,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6D6D6F),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
