import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;

  const factory SearchState.loading() = Loading;

  const factory SearchState.loaded() = Loaded;

  const factory SearchState.error({
    required String error,
  }) = Error;
}
