import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:template_app/common/nav/route_params.dart';
import 'package:template_app/common/nav/routes.dart';

extension ContextNavigatorExt on BuildContext {
  Navigator get navigator => Navigator(this);
}

class Navigator {
  const Navigator(this.context);

  final BuildContext context;

  void goHome() => context.go(Routes.home);

  void goHomeSearch(String query) => context.go(
        Routes.homeSearch,
        extra: {RouteParams.query: query},
      );

  void goProfile() => context.go(Routes.profile);
}
