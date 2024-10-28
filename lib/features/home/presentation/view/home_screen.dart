import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/common/nav/navigator.dart';
import 'package:template_app/common/service_locator.dart';
import 'package:template_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:template_app/features/home/presentation/cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<HomeCubit>()..loadData(),
        child: const HomeView(),
      );
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Home Screen'),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) => switch (state) {
                    Loaded _ => Text('Data: ${state.data}'),
                    _ => const SizedBox.shrink(),
                  },
                ),
                TextButton(
                  onPressed: () => context.navigator.goHomeSearch('query'),
                  child: const Text('Go to Search'),
                ),
              ],
            ),
          ),
        ),
      );
}
