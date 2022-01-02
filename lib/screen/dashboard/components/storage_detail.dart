import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/screen/dashboard/components/chart.dart';

class StorageDetail extends StatelessWidget {
  const StorageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.defaultPadding),
      decoration: BoxDecoration(
        color: Constants.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: Constants.defaultPadding,
          ),
          Chart()
        ],
      ),
    );
  }
}
