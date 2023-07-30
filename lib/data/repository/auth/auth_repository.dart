abstract class AuthRepository {

  Stream<bool> isAuthenticated();

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  });
}