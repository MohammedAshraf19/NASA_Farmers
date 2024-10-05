import 'package:flutter/material.dart';
import 'package:nasa_farmers/features/auth/presentation/manager/register_cubit/register_cubit.dart';

import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class InputRegister extends StatelessWidget {
  const InputRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomTextFormField(
            secure: false,
            label: 'Full Name',
            textInputType: TextInputType.name,
            controller: RegisterCubit.get(context).nameController,
            validate: 'Name',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            secure: false,
            label: 'Email Address',
            textInputType: TextInputType.emailAddress,
            controller: RegisterCubit.get(context).emailController,
            validate: 'Email Address',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            secure: false,
            label: 'Your Job',
            textInputType: TextInputType.text,
            controller: RegisterCubit.get(context).jobController,
            validate: 'Job',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            secure: true,
            label: 'Password',
            textInputType: TextInputType.visiblePassword,
            controller: RegisterCubit.get(context).passwordController,
            validate: 'Password',
            suffix:  IconButton(
                onPressed: (){},
                icon: const Icon(
                    Icons.visibility
                )
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            secure: true,
            label: 'Confirm Password',
            textInputType: TextInputType.visiblePassword,
            controller: RegisterCubit.get(context).confirmPasswordController,
            validate: 'Confirm Password',
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

        ],
      ),
    );
  }
}
