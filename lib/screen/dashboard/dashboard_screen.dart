import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/header.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/my_files.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/recent_files.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Constants.defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: Constants.defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      MyFiles(),
                      SizedBox(height: Constants.defaultPadding),
                      RecentFiles()
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
