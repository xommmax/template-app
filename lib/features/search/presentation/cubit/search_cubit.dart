import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:template_app/features/search/presentation/cubit/search_state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());

  Future<void> loadData() async {
    emit(const SearchState.loading());
    try {
      emit(const SearchState.loaded());
    } catch (e) {
      emit(SearchState.error(error: e.toString()));
    }
  }
}
