import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/registers_model.dart';

/// A provider class for the RegistersScreen.
///
/// This provider manages the state of the RegistersScreen, including the
/// current registersModelObj

// ignore_for_file: must_be_immutable
class RegistersProvider extends ChangeNotifier {
  TextEditingController firstNameRowController = TextEditingController();

  TextEditingController lastNameRowController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  RegistersModel registersModelObj = RegistersModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    firstNameRowController.dispose();
    lastNameRowController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
