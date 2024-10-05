import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_farmers/features/auth/data/repositories/auth_repo_implement.dart';
import 'package:nasa_farmers/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => RegisterCubit(AuthRepoImplement()),
        child: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
              child: RegisterViewBody(),

          ),
        ),
      ),
    );
  }
}
