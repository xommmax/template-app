import 'package:injectable/injectable.dart';
import 'package:template_app/features/home/data/home_local_ds.dart';
import 'package:template_app/features/home/data/home_remote_ds.dart';
import 'package:template_app/features/home/domain/model/home_model.dart';
import 'package:template_app/features/home/domain/repository/home_repository.dart';

@Singleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._remoteDs, this._localDs);

  final HomeRemoteDataSource _remoteDs;
  final HomeLocalDataSource _localDs;

  @override
  Future<HomeModel> getHomeData() async {
    return _remoteDs.getHomeData();
  }
}
