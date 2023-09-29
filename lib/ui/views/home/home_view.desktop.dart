import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:filledstacks_academy/ui/common/app_constants.dart';
import 'package:filledstacks_academy/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "FilledStacks Academy",
                style: TextStyle(
                  fontFamily: "Open Sans",
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              GradientText(
                "MASTER\nFLUTTER",
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w800,
                  height: 0.95,
                ),
                colors: const [
                  Color(0xff30e474),
                  Color(0xff0c8eef),
                ],
                gradientType: GradientType.linear,
              ),
              const Text(
                "ON THE WEB",
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Build amazing software, the right way.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GradientText(
                    "Sign up to be notified",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    colors: const [
                      Color(0xff30e474),
                      Color(0xff0c8eef),
                    ],
                    gradientType: GradientType.linear,
                  )
                ],
              ),
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: SvgPicture.asset('sign-up-arrow.svg'),
              ),
              verticalSpaceSmall,
              Row(
                children: [
                  const TextField(
                    decoration:
                        InputDecoration.collapsed(hintText: "Your email"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Notify me",
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
          Container(
            width: 450,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
