import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/choice_view_body.dart';


class ChoiceView extends StatelessWidget {
  const ChoiceView({super.key});

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
          child:
          ChoiceViewBody()
      ),
    );
  }
}
