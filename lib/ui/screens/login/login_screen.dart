import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/screens/auth/auth_view_model.dart';
import 'package:instagram_clone/ui/screens/login/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: LoginViewModel(),
      builder: (_, __) =>
          Scaffold(
            body: SafeArea(
              child: Consumer2<AuthViewModel, LoginViewModel>(
                builder: (_, authViewModel, loginViewModel, child) {
                  return _LoginScreenContent(
                    authViewModel: authViewModel,
                    loginViewModel: loginViewModel,
                  );
                },
              ),
            ),
          ),
    );
  }
}

class _LoginScreenContent extends StatelessWidget {
  final AuthViewModel authViewModel;
  final LoginViewModel loginViewModel;

  const _LoginScreenContent({
    required this.authViewModel,
    required this.loginViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          // TODO: Instagram name image
          Form(
            child: Focus(
              child: Column(
                children: [
                  // TODO: Email field
                  // TODO: Password field
                ],
              ),
            ),
          ),
          // TODO: Login button
          // TODO: Sign up button
        ],
      )
    );
  }
}
