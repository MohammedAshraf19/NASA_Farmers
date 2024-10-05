import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/land_view_body.dart';

class LandView extends StatelessWidget {
  const LandView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Set the status bar color to green
        statusBarIconBrightness: Brightness
            .dark, // Make the status bar icons light-colored
      ),
    );
    return  const Scaffold(
      body: SafeArea(
          child: LandViewBody()
      ),
    );
  }
}
