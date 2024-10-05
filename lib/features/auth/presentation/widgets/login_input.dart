import 'package:flutter/material.dart';
import 'package:nasa_farmers/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginInput extends StatelessWidget {
  const LoginInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            secure: false,
            label: 'Email',
            textInputType: TextInputType.emailAddress,
            controller: LoginCubit.get(context).emailController,
            validate: 'Email Address',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            secure: true,
            label: 'Password',
            textInputType: TextInputType.visiblePassword,
            controller: LoginCubit.get(context).passwordController,
            validate: 'Password',
            suffix:  IconButton(
                onPressed: (){},
                icon: const Icon(
                    Icons.visibility
                )
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){},
            child:  Text(
              'Forget Password?',
              style: AppStyles.testStyle14.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColor.kPrimaryColor
              ),
            ),
          ),

        ],
      ),
    );
  }
}
