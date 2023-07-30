import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthModel implements Equatable {
  final AuthState authState;

  AuthModel({required this.authState});

  AuthModel.defaults() : authState = AuthState.login;

  @override
  List<Object?> get props => [authState];

  @override
  bool? get stringify => true;

  AuthModel copyWith({
    AuthState? authState,
    User? user,
  }) =>
      AuthModel(authState: authState ?? this.authState);
}

enum AuthState { signUp, login, authenticated }
