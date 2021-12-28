import 'package:flutter/material.dart';

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
            Expanded(flex: 1, child: Placeholder()),
            // DashboardScreen
            // It takes 5/6 part of the screen
            Expanded(flex: 5, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
