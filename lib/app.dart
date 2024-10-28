import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:template_app/common/nav/router.dart';
import 'package:template_app/common/ui/app_colors.dart';

class TemplateApp extends StatelessWidget {
  const TemplateApp({super.key});

  @override
  Widget build(BuildContext context) => const TemplateAppView();
}

class TemplateAppView extends StatelessWidget {
  const TemplateAppView({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: appRouter,
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
        ),
      );
}
