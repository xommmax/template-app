import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/common/service_locator.dart';
import 'package:template_app/features/home/presentation/cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<HomeCubit>(),
        child: const HomeView(),
      );
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Home Screen'),
              ],
            ),
          ),
        ),
      );
}
