import 'package:injectable/injectable.dart';

abstract class HomeLocalDataSource {}

@Singleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImpl implements HomeLocalDataSource {}
