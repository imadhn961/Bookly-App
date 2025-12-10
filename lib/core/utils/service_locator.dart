import 'package:booklyapp/feature/home/data/Repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;


void setupLocator() {
  getIt.registerSingleton<ApiService>(
     ApiService(dio: Dio())
  );
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(getIt.get<ApiService>())
  );
  getIt.registerSingleton<AuthRepo>(
      AuthRepo(getIt.get<ApiService>())
  );
}

class AuthRepo{
  final ApiService apiService;

  AuthRepo(this.apiService);
}