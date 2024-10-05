import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nasa_farmers/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Set the status bar color to green
        statusBarIconBrightness: Brightness.light, // Make the status bar icons light-colored
      ),
    );
    return const Scaffold(
      body: SafeArea(
          child: SplashViewBody()
      ),
    );
  }
}
