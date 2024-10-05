import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: AppColor.kPrimaryLightColor,
      elevation: 4,
      child: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.logo),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Now',
                  style: AppStyles.testStyle14.copyWith(
                      color: AppColor.kPrimaryBlack.withOpacity(0.5),
                      fontSize: 10
                  ),
                ),
                 SizedBox(
                  width: MediaQuery.of(context).size.width/1.45,
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    text:  TextSpan(
                        children: [
                          TextSpan(
                            text: 'Warning: ',
                            style: AppStyles.testStyle14.copyWith(
                                color: Colors.red
                            ),
                          ),
                          TextSpan(
                            text: 'Strong Wind expected with speed 50 km/h',
                            style: AppStyles.testStyle16.copyWith(
                                color: AppColor.kPrimaryBlack
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
