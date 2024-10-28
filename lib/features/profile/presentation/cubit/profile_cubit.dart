import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:template_app/features/profile/presentation/cubit/profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  Future<void> loadData() async {
    emit(const ProfileState.loading());
    try {
      emit(const ProfileState.loaded());
    } catch (e) {
      emit(ProfileState.error(error: e.toString()));
    }
  }
}
