import 'package:injectable/injectable.dart';
import 'package:template_app/features/home/data/home_remote_ds.dart';
import 'package:template_app/features/home/domain/model/home_model.dart';
import 'package:template_app/features/home/domain/repository/home_repository.dart';

@Singleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDs;

  HomeRepositoryImpl(this._remoteDs);

  @override
  Future<HomeModel> getHomeData() async {
    return _remoteDs.getHomeData();
  }
}