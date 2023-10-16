import 'package:bookapp/core/utils/apiService.dart';
import 'package:bookapp/features/Search/Data/repo/SearchRepoImpl.dart';
import 'package:bookapp/features/home/data/repos/homeRepoImple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void steupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(getIt.get<ApiService>()));
}
