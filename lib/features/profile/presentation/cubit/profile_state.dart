import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;

  const factory ProfileState.loading() = Loading;

  const factory ProfileState.loaded() = Loaded;

  const factory ProfileState.error({
    required String error,
  }) = Error;
}
