import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:template_app/features/home/domain/repository/home_repository.dart';
import 'package:template_app/features/home/presentation/cubit/home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.homeRepository,
  ) : super(const HomeState.initial());

  final HomeRepository homeRepository;

  Future<void> loadData() async {
    emit(const HomeState.loading());
    try {
      final data = await homeRepository.getHomeData();
      emit(HomeState.loaded(data: data));
    } catch (e) {
      emit(HomeState.error(error: e.toString()));
    }
  }
}
