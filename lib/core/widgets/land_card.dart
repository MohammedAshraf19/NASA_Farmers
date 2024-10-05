import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';
import 'custom_elevated_button.dart';

class LandCard extends StatelessWidget {
  const LandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: AppColor.kPrimaryWhite,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Assets.myLand),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'My Land',
                  style: AppStyles.testStyle14.copyWith(
                    color: AppColor.kPrimaryBlack,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.48,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    'Egypt, Zagazig, Banga Road',
                    style: AppStyles.testStyle14.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColor.kPrimaryBlack.withOpacity(0.6)
                    ),
                  ),
                ),
                Spacer(),
                Image.asset(Assets.map),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: CustomElevatedButton(
                  onPressed: (){},
                  color: AppColor.kPrimaryColor,
                  child:  Text(
                    'Change Location',
                    style: AppStyles.testStyle14.copyWith(
                        color: AppColor.kPrimaryWhite
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
