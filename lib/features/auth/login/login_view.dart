import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      // savedEmail: 'testing@gmail.com',
      // savedPassword: '12345',
      loginAfterSignUp: false,
      logo: const AssetImage('assets/images/logo.png'),
      onLogin: (loginData) async {
        return '';
      },
      onSignup: (SignupData data) async {
        return '';
      },
      onSubmitAnimationCompleted: () {},
      onRecoverPassword: (_) => null,
      hideForgotPasswordButton: true,
      theme: LoginTheme(
        switchAuthTextColor: Colors.grey,
        primaryColor: const Color.fromARGB(255, 231, 217, 217),
        accentColor: AppColor.darkOrange,
        buttonTheme: const LoginButtonTheme(
          backgroundColor: AppColor.darkOrange,
        ),
        cardTheme: const CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        titleStyle: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
