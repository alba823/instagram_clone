import 'package:flutter/material.dart';
import 'package:instagram_clone/data/di/get_it.dart';
import 'package:instagram_clone/ui/screens/auth/auth_view_model.dart';
import 'package:instagram_clone/ui/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

import 'auth_model.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: getIt.get<AuthViewModel>(),
      builder: (_, ch) {
        return Selector<AuthViewModel, AuthModel>(
          selector: (_, viewModel) => viewModel.authModel,
          builder: (_, authModel, ch) {
            return switch (authModel.authState) {
              AuthState.signUp => const Text("SignUpScreen"),
              AuthState.login => const LoginScreen(),
              AuthState.authenticated => const Text("Home")
            };
          },
        );
      },
    );
  }
}
