import 'package:ecommerce_app/features/Auth/presentation/pages/complete_information/widgets/complete_information_body.dart';
import 'package:flutter/material.dart';

class CompletInformationView extends StatelessWidget {
  const CompletInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),

        child: CompleteInformationBody(),
      ),
    );
  }
}
