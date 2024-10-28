import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:template_app/features/home/domain/model/home_model.dart';

abstract class HomeRemoteDataSource {
  Future<HomeModel> getHomeData();
}

@Singleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImpl(this.dio);

  @override
  Future<HomeModel> getHomeData() async =>
      const HomeModel(id: 'my_id', data: 'my_data');
}
