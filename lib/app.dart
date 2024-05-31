import 'package:e_commerce/bindings/general_bindings.dart';
import 'package:e_commerce/utils/constants/colors.dart';

import 'package:flutter/material.dart';

import 'package:e_commerce/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lighttheme,
        darkTheme: TAppTheme.darktheme,
        initialBinding: GeneralBindings(),

        /// Show loader or Cicular progress indicator meanwhile Authentication Repository is deciding to show wrelevant screen
        home: const Scaffold(
          backgroundColor: TColors.primaryColor,
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ));
  }
}
