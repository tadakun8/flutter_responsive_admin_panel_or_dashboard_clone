import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/responsive.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "My Files",
        style: Theme.of(context).textTheme.subtitle1,
      ),
      ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text("Add New"),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: Constants.defaultPadding * 1.5,
            vertical: Constants.defaultPadding /
                (Responsive.isMobile(context) ? 2 : 1),
          ),
        ),
      ),
    ]);
  }
}
