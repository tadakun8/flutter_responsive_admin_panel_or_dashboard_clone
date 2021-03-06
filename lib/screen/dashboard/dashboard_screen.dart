import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/header.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/my_files.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/recent_files.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/storage_detail.dart';

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
                    children: [
                      const MyFiles(),
                      const SizedBox(height: Constants.defaultPadding),
                      const RecentFiles(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: Constants.defaultPadding),
                      if (Responsive.isMobile(context)) const StorageDetail(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(
                    width: Constants.defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  const Expanded(flex: 2, child: StorageDetail())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
