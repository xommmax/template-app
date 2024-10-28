import 'package:template_app/features/home/domain/model/home_model.dart';

abstract class HomeRepository {
  Future<HomeModel> getHomeData();
}
