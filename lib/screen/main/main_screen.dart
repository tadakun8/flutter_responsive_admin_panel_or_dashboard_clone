import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/dashboard_screen.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Sidemenu
            // It takes 1/6 part of the screen
            Expanded(flex: 1, child: SideMenu()),
            // DashboardScreen
            // It takes 5/6 part of the screen
            Expanded(flex: 5, child: DashBoardScreen()),
          ],
        ),
      ),
    );
  }
}
