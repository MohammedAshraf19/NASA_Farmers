import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/core/utils/app_routers.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/have_account.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/login_divider.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import 'auth_app_bar.dart';

class ChoiceViewBody extends StatelessWidget {
  const ChoiceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthAppBar(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomElevatedButton(
            onPressed: (){},
            color: AppColor.kPrimaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.facebook,
                  height: 50,
                  width: 50,
                ),
                Text(
                  'Sign Up With Facebook',
                  style: AppStyles.testStyle16.copyWith(
                      color: AppColor.kPrimaryWhite
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.kPrimaryWhite,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: Size(MediaQuery.of(context).size.width,55)
            ),
            onPressed: (){

            },
            child:  Row(
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
                  'Sign Up With Google',
                  style: AppStyles.testStyle16.copyWith(
                      color: AppColor.kPrimaryBlack
                  ),
                )
              ],
            ),
          ),
        ),
        const LoginDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomElevatedButton(
            onPressed: (){
              GoRouter.of(context).push(AppRouters.registerView);
            },
            color: AppColor.kPrimaryColor,
            child:  Text(
              'Create Account',
              style: AppStyles.testStyle16.copyWith(
                  color: AppColor.kPrimaryWhite
              ),
            )
          ),
        ),
        const HaveAccount(),
      ],
    );
  }
}
