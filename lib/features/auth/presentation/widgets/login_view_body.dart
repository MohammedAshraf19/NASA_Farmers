import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/core/functions/custom_snack_bar.dart';
import 'package:nasa_farmers/core/utils/app_routers.dart';
import 'package:nasa_farmers/core/utils/colors.dart';
import 'package:nasa_farmers/core/utils/styles.dart';
import 'package:nasa_farmers/core/widgets/custom_elevated_button.dart';
import 'package:nasa_farmers/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/auth_app_bar.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/login_divider.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/login_input.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/other_login.dart';

import '../../../../core/widgets/custom_loading.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess){
          customSnackBarSuccess(
              context: context, message: 'Hallo Again'
          );
          GoRouter.of(context).pushReplacement(AppRouters.homeView);
        }
        else if (state is LoginError){
          customSnackBarError(context: context, message: state.error);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const AuthAppBar(navigate: true,),
            const Text(
              'Login',
              style: AppStyles.testStyle30,
            ),
            const SizedBox(
              height: 70,
            ),
            const LoginInput(),
            const SizedBox(
              height: 70,
            ),
            state is LoginLoading ?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomLoadingItem(
                  width: MediaQuery.of(context).size.width,
                  height: 60
              ),
            ):
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomElevatedButton(
                  onPressed: () {
                    LoginCubit.get(context).login();
                  },
                  color: AppColor.kPrimaryColor,
                  child: Text(
                    'Login',
                    style: AppStyles.testStyle18.copyWith(
                        color: AppColor.kPrimaryWhite
                    ),
                  )
              ),
            ),
            const LoginDivider(),
            const OtherLogin(),
          ],
        );
      },
    );
  }
}
