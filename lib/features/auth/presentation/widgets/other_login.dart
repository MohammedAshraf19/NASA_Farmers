import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class OtherLogin extends StatelessWidget {
  const OtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomElevatedButton(
            onPressed: (){},
            color: AppColor.kPrimaryWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.facebook,
                  height: 50,
                  width: 50,
                ),
                Text(
                  'Login With Facebook',
                  style: AppStyles.testStyle16.copyWith(
                      color: AppColor.kPrimaryBlack.withOpacity(0.7)
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomElevatedButton(
            onPressed: (){},
            color: AppColor.kPrimaryWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.google,
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'Login With Google',
                  style: AppStyles.testStyle16.copyWith(
                      color: AppColor.kPrimaryBlack.withOpacity(0.7)
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
