import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nasa_farmers/features/auth/data/repositories/auth_repo.dart';

import '../../../../core/errors/faliure.dart';
import '../../../../core/utils/api_services.dart';


class AuthRepoImplement implements AuthRepo{
  @override
  Future<Either<Failure, dynamic>> register
      ({required String name, required String email, required String job, required String password, required String confirmPassword})async
  {
    try{
      var data = await ApiServices.postData(
        data: {
          "fullName": name,
          "email": email,
          "job": job,
          "password": password,
          "confirmPassword": confirmPassword
        },
        endPoint: 'auth/register',
      );

      return right(data.data);
    }
    catch(e){
      if (e is DioException) {
        return  left(ServerFailure.fromDioException(e));
      }
      return  left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, dynamic>> signIn({required String email, required String password})async {
    try{
      var data = await ApiServices.postData(
        data: {
          "email": email,
          "password": password
        },
        endPoint: 'auth/login',
      );
      return right(data.data);
    }
    catch(e){
      if (e is DioException) {
        return  left(ServerFailure.fromDioException(e));
      }
      return  left(ServerFailure(e.toString()));
    }
  }
  
}