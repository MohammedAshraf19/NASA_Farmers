import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:nasa_farmers/features/auth/data/repositories/auth_repo.dart';

import '../../../../../const.dart';
import '../../../../../core/utils/cache_helper.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());
  static RegisterCubit get(context)=>BlocProvider.of(context);

  final AuthRepo authRepo;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void register() async{
    emit(RegisterLoading());
    var result = await authRepo.register(name: nameController.text, email: emailController.text,
        job: jobController.text, password: passwordController.text, confirmPassword: confirmPasswordController.text);
    result.fold((error){
      emit(RegisterError(error: error.errorMessage));
    }, (value){
      CacheHelper().saveData(key: userId, value: value['user']['id']);
      emit(RegisterSuccess());
    });
  }
}
