import 'package:fast/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialStates());

  static RegisterCubit get(context) => BlocProvider.of(context);




  IconData suffix = Icons.visibility_off;
  bool isNotVisible = true;

  void changePasswordVisability() {
    isNotVisible = !isNotVisible;

    suffix = isNotVisible ? Icons.visibility_off : Icons.visibility;
    emit(PasswordStates());
  }
}
