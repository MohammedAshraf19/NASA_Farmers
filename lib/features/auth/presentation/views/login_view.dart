import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_farmers/features/auth/data/repositories/auth_repo_implement.dart';
import 'package:nasa_farmers/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:nasa_farmers/features/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(AuthRepoImplement()),
        child: const SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: LoginViewBody(),
            )
        ),
      ),
    );
  }
}
