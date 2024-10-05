import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_farmers/const.dart';
import 'package:nasa_farmers/core/utils/cache_helper.dart';
import 'package:nasa_farmers/features/auth/data/repositories/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

   static LoginCubit get(context) => BlocProvider.of(context);
   final AuthRepo authRepo;
   final emailController = TextEditingController();
  final passwordController = TextEditingController();

   void login() async{
     emit(LoginLoading());
     var result = await authRepo.signIn(email: emailController.text, password: passwordController.text);
     result.fold((error){
       emit(LoginError(error: error.errorMessage));
     }, (value){
       CacheHelper().saveData(key: userId, value: value['user']['id']);
       emit(LoginSuccess());
     });
   }
}
