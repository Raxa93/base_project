import 'package:base_app/data/repositiries/login_repo/login_repo.dart';
import 'package:base_app/data/repositiries/login_repo/login_repo_imp.dart';
import 'package:base_app/data/services/api_client.dart';
import 'package:base_app/data/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

import '../services/logger_service.dart';

GetIt locator = GetIt.instance;

Future setUpLocator() async {
  //Registering Services
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<LoggerService>(() => LoggerServiceImp());
  locator.registerLazySingleton<ApiClient>(() => ApiClientImp());

  //Registering Repositories
  locator.registerLazySingleton<LoginRepo>(() => LoginRepoImp(
        loggerService: locator(),
        apiClient: locator(),
      ));
}
