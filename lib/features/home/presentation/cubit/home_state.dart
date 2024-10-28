import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_app/features/home/domain/model/home_model.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = Loading;

  const factory HomeState.loaded({
    required HomeModel data,
  }) = Loaded;

  const factory HomeState.error({
    required String error,
  }) = Error;
}
