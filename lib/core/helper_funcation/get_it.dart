import 'package:fruit_hub/core/services/fire_store_service.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<FireStoreService>(FireStoreService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
    getIt<FirebaseAuthService>(),
    getIt<FireStoreService>(),
  ));
}
