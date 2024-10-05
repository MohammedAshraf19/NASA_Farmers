import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_routers.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have account? ',
              style: AppStyles.testStyle14.copyWith(
                color: AppColor.kPrimaryBlack.withOpacity(0.8),
              ),
            ),
            InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRouters.loginView);
              },
              child: Text(
                'Login',
                style: AppStyles.testStyle14.copyWith(
                  color: AppColor.kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
