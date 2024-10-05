import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/core/utils/app_routers.dart';
import 'package:nasa_farmers/core/widgets/custom_loading.dart';
import 'package:nasa_farmers/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/auth_app_bar.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/have_account.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/input_register.dart';
import '../../../../core/functions/custom_snack_bar.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess){
          customSnackBarSuccess(
              context: context, message: 'Set Land Location'
          );
          GoRouter.of(context).push(AppRouters.landView);
        }
        else if (state is RegisterError){
          customSnackBarError(context: context, message: state.error);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const AuthAppBar(navigate: true,),
            const Text(
              'Sign Up',
              style: AppStyles.testStyle30,
            ),
            const SizedBox(
              height: 50,
            ),
            const InputRegister(),
            const SizedBox(
              height: 20,
            ),
            state is RegisterLoading ?
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
                    RegisterCubit.get(context).register();
                  },
                  color: AppColor.kPrimaryColor,
                  child: Text(
                    'Sign Up',
                    style: AppStyles.testStyle18.copyWith(
                        color: AppColor.kPrimaryWhite
                    ),
                  )
              ),
            ),
            const HaveAccount(),
          ],
        );
      },
    );
  }
}
