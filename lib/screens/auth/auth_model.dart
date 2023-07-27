import 'package:equatable/equatable.dart';

class AuthModel implements Equatable {
  @override
  // TODO: Implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  bool? get stringify => true;

}

enum AuthState { signUp, login, authenticated }