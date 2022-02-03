import 'package:flutter/material.dart';
import 'package:mostafa_yasser/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "CSS",
        ),
      ],
    );
  }
}
