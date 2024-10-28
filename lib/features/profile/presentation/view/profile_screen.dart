import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/common/service_locator.dart';
import 'package:template_app/features/profile/presentation/cubit/profile_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<ProfileCubit>(),
        child: const ProfileView(),
      );
}

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Profile Screen'),
              ],
            ),
          ),
        ),
      );
}
