import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headlineStyle3,),
        const SizedBox(height: 5,),
        Text(secondText, style: Styles.headlineStyle4,)
      ],
    );
  }
}
