import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/data/repository/auth/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth _auth;

  FirebaseAuthRepository({FirebaseAuth? auth})
      : _auth = auth ?? FirebaseAuth.instance;

  @override
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {}

  @override
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {}

  @override
  Stream<bool> isAuthenticated() {
    return _auth.userChanges().map((u) => u != null);
  }
}
