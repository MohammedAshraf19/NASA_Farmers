import 'package:dartz/dartz.dart';
import '../../../../core/errors/faliure.dart';

abstract class AuthRepo{
  Future<Either<Failure,dynamic>> signIn({required String email, required String password});
  Future<Either<Failure,dynamic>> register({required String name, required String email, required String job, required String password, required String confirmPassword});
}