
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'login_states.dart';




class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super(LoginInitialStates());

  static LoginCubit get(context) => BlocProvider.of(context);



  IconData suffix =Icons.visibility_off_outlined;
  bool isNotVisible = true;

  void changePasswordVisability(){

    isNotVisible = !isNotVisible ;

    suffix = isNotVisible ? Icons.visibility_off_outlined: Icons.visibility_outlined;
    emit(PasswordStates());

  }

}