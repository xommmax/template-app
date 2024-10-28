import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/common/service_locator.dart';
import 'package:template_app/features/search/presentation/cubit/search_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
    required this.query,
  });

  final String query;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<SearchCubit>(),
        child: const SearchView(),
      );
}

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: const SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Search Screen'),
              ],
            ),
          ),
        ),
      );
}
