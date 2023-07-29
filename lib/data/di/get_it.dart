import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/data/repository/auth/auth_repository.dart';
import 'package:instagram_clone/data/repository/auth/firebase_auth_repository.dart';
import 'package:instagram_clone/screens/auth/auth_view_model.dart';

GetIt getIt = GetIt.I;

void configureDependencies() {
  getIt.registerFactory<AuthRepository>(
    () => FirebaseAuthRepository(auth: FirebaseAuth.instance),
  );
  getIt.registerFactory<AuthViewModel>(() => AuthViewModel(getIt.get()));
}
