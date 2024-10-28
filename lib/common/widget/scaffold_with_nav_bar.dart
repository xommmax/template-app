import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:template_app/common/ext/context_ext.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNavBar({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: const FaIcon(FontAwesomeIcons.house),
              label: context.l10n.home,
            ),
            BottomNavigationBarItem(
              icon: const FaIcon(FontAwesomeIcons.user),
              label: context.l10n.profile,
            ),
          ],
          currentIndex: navigationShell.currentIndex,
          onTap: (index) => navigationShell.goBranch(index,
              initialLocation: index == navigationShell.currentIndex),
        ),
      );
}
