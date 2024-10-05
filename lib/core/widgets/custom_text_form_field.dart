import 'package:flutter/material.dart';
import 'package:nasa_farmers/core/utils/colors.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.secure,
    required this.label,
    required this.textInputType,
    required this.controller,
    this.suffix, this.validate,
  });
  final Widget? suffix;
  final String label;
  final bool secure;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: secure,
      keyboardType: textInputType,
      cursorColor: AppColor.kPrimaryColor.withOpacity(0.5),
      decoration: InputDecoration(
        suffixIcon: suffix,
        prefixIcon: Container(
          width: 1,
        ),
        fillColor: Colors.white,
        filled: true,
        labelText: label,
        labelStyle: TextStyle(
          color: AppColor.kPrimaryBlack.withOpacity(0.5),

        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColor.kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColor.kPrimaryColor,
          ),
        ),
      ),
      validator: (value){
        // if (value!.isEmpty) {
        //   return 'The $validate Must Not Be Empty';
        // }
        // else if (validate == 'Confirm Password' && (RegisterCubit.get(context).passwordController.text != RegisterCubit.get(context).confirmPasswordController.text)){
        //   return 'Confirm Password Must Like Password';
        // }
        // else {
        //   return null;
        // }
      },
    );
  }
}
