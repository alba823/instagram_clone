import 'package:flutter/foundation.dart';
import 'package:instagram_clone/data/repository/auth/auth_repository.dart';
import 'package:instagram_clone/ui/screens/auth/auth_model.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  var authModel = AuthModel.defaults();

  AuthViewModel(this._authRepository) {
    listenToAuthenticationStateChanges();
  }

  void showSignUp() {
    authModel = authModel.copyWith(authState: AuthState.signUp);
    notifyListeners();
  }

  void showLogin() {
    authModel = authModel.copyWith(authState: AuthState.login);
    notifyListeners();
  }

  void listenToAuthenticationStateChanges() async {
    _authRepository.isAuthenticated().listen(
      (isAuthenticated) {
        if (!isAuthenticated) {
          authModel = authModel.copyWith(authState: AuthState.login);
          notifyListeners();
        }
      },
    );
  }
}
