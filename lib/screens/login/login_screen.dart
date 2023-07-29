import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: LoginViewModel(),
      builder: (_, __) => const _LoginScreenContent(),
    );
  }
}

class _LoginScreenContent extends StatelessWidget {
  const _LoginScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
