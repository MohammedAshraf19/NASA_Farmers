import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/core/utils/app_routers.dart';
import 'package:nasa_farmers/core/utils/colors.dart';
import '../../../../core/utils/assets.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key, this.navigate = false});
  final bool navigate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Image.asset(
                Assets.left
            ),
            navigate == true?
            Positioned(
              left: 20,
              bottom: 10,
              child: FloatingActionButton(
                mini: true,
                onPressed: (){
                  GoRouter.of(context).push(AppRouters.choiceView);
                  print("Hallo00");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)
                ),
                backgroundColor: AppColor.kPrimaryColor,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.kPrimaryWhite,
                ),
              ),
            ):Container(),
          ],
        ),
        const Spacer(),
         Image.asset(
            Assets.right
        ),
      ],
    );
  }
}
