import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
abstract class Env {
  @EnviedField(varName: 'PRIVATE_API_KEY')
  static String privateApiKey = _Env.privateApiKey;
}
