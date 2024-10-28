// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/home/data/home_local_ds.dart' as _i1070;
import '../features/home/data/home_remote_ds.dart' as _i946;
import '../features/home/data/home_repository_impl.dart' as _i18;
import '../features/home/domain/repository/home_repository.dart' as _i855;
import '../features/home/presentation/cubit/home_cubit.dart' as _i1017;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i300;
import '../features/search/presentation/cubit/search_cubit.dart' as _i638;
import 'service_locator.dart' as _i105;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i638.SearchCubit>(() => _i638.SearchCubit());
    gh.factory<_i300.ProfileCubit>(() => _i300.ProfileCubit());
    gh.singleton<_i361.Dio>(() => dataModule.dio);
    gh.singleton<_i946.HomeRemoteDataSource>(
        () => _i946.HomeRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.singleton<_i1070.HomeLocalDataSource>(
        () => _i1070.HomeLocalDataSourceImpl());
    gh.singleton<_i855.HomeRepository>(() => _i18.HomeRepositoryImpl(
          gh<_i946.HomeRemoteDataSource>(),
          gh<_i1070.HomeLocalDataSource>(),
        ));
    gh.factory<_i1017.HomeCubit>(
        () => _i1017.HomeCubit(gh<_i855.HomeRepository>()));
    return this;
  }
}

class _$DataModule extends _i105.DataModule {}
