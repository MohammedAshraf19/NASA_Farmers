import 'package:flutter/material.dart';
import 'package:nasa_farmers/core/utils/colors.dart';

import '../utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressed, required this.child, required this.color, this.height = 55});

  final double? height;
  final Widget child;
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              color: AppColor.kPrimaryColor
            )
          ),
          fixedSize: Size(MediaQuery.of(context).size.width,height!)
      ),
      onPressed: onPressed,
      child:  child,
    );
  }
}
