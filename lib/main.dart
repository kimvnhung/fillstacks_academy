import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:filledstacks_academy/app/app.bottomsheets.dart';
import 'package:filledstacks_academy/app/app.dialogs.dart';
import 'package:filledstacks_academy/app/app.locator.dart';
import 'package:filledstacks_academy/app/app.router.dart';
import 'package:seo/html/seo_controller.dart';
import 'package:seo/html/tree/widget_tree.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: ResponsiveApp(
        builder: (_) => MaterialApp.router(
          title: "FilledStacks Academy",
          theme: Theme.of(context).copyWith(
            primaryColor: kcBackgroundColor,
            focusColor: kcPrimaryColor,
            textTheme: GoogleFonts.openSansTextTheme().apply(
              bodyColor: Colors.white,
            ),
          ),
          routerDelegate: stackedRouter.delegate(),
          routeInformationParser: stackedRouter.defaultRouteParser(),
        ),
      ).animate().fadeIn(
            delay: const Duration(milliseconds: 50),
            duration: const Duration(milliseconds: 400),
          ),
    );
  }
}
