import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:filledstacks_academy/ui/common/app_constants.dart';
import 'package:filledstacks_academy/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
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
                "Master Flutter",
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w800,
                ),
                colors: const [
                  Color(0x0030e474),
                  Color(0x000c8eef),
                ],
              ),
              const Text(
                "On The Web",
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w800,
                ),
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
