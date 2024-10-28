import 'package:flutter_bloc/flutter_bloc.dart';

extension CubitExt<State> on Cubit<State> {
  void doIfState<T>(void Function(T) action) {
    if (state is T) {
      action(state as T);
    }
  }
}