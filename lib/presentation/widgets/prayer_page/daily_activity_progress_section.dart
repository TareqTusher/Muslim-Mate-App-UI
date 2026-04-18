import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class DailyActivityProgressSection extends StatefulWidget {
  const DailyActivityProgressSection({super.key});

  @override
  State<DailyActivityProgressSection> createState() =>
      _DailyActivityProgressSectionState();
}

class _DailyActivityProgressSectionState
    extends State<DailyActivityProgressSection> {
  int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.2,
          child: InkWell(
            onTap: () {},
            child: StepProgressIndicator(
              onTap: (index) {
                return () {
                  setState(() {
                    currentStep = index + 1;
                  });
                };
              },
              size: 6,
              totalSteps: 6,
              currentStep: currentStep,
              selectedColor: AppColors.primary500,
              unselectedColor: AppColors.grey400,
              roundedEdges: Radius.circular(12),
            ),
          ),
        ),
        SizedBox(width: 8),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$currentStep",
                style: TextStyles.fontText14Regular(AppColors.primary500),
              ),
              TextSpan(
                text: "/6",
                style: TextStyles.fontText14Regular(AppColors.grey500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
