import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:template_app/common/env.dart';

import 'service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();

@module
abstract class DataModule {
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: 'https://baseurl.com',
          headers: {
            'Authorization': 'Bearer ${Env.privateApiKey}',
          },
        ),
      )..interceptors.addAll([
          // PrettyDioLogger(),
        ]);
}
