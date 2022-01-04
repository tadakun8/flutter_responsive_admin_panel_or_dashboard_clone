import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/dashboard_screen.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // NOTE: Scaffold's default drawer padding is not adjustable.
      // So if you want to adjust it, you'll have to customize it.
      // (the following link is helpful)
      // https://stackoverflow.com/questions/59554348/how-can-i-change-drawer-icon-in-flutter
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // It takes 1/6 part of the screen
            if (Responsive.isDesktop(context))
              const Expanded(flex: 1, child: SideMenu()),
            // DashboardScreen
            // It takes 5/6 part of the screen
            const Expanded(flex: 5, child: DashBoardScreen()),
          ],
        ),
      ),
    );
  }
}
