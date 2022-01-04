import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard_clone/responsive.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      if (!Responsive.isDesktop(context))
        IconButton(
            onPressed: Scaffold.of(context).openDrawer,
            icon: const Icon(Icons.menu)),
      if (!Responsive.isMobile(context))
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
      if (!Responsive.isMobile(context))
        Spacer(
          flex: Responsive.isDesktop(context) ? 2 : 1,
        ),
      const Expanded(
        child: SearchField(),
      ),
      const ProfileCard()
    ]);
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: Constants.defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: Constants.defaultPadding,
        vertical: Constants.defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Constants.secondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white12),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Constants.defaultPadding / 2),
              child: Text('Angelina Jolie'),
            ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Constants.secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),

        // Original is below.
        // This is ripple effect not working.
        // suffixIcon: InkWell(
        //   onTap: () {},
        //   child: Container(
        //     padding: const EdgeInsets.all(Constants.defaultPadding * 0.75),
        //     margin: const EdgeInsets.symmetric(
        //         horizontal: Constants.defaultPadding / 2),
        //     decoration: BoxDecoration(
        //       color: Constants.primaryColor,
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     child: SvgPicture.asset("assets/icons/Search.svg"),
        //   ),
        // ),
        suffixIcon: Container(
          margin: const EdgeInsets.only(right: Constants.defaultPadding * 0.5),
          decoration: BoxDecoration(
            color: Constants.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(Constants.defaultPadding * 0.5),
                margin: const EdgeInsets.symmetric(
                    horizontal: Constants.defaultPadding / 2),
                child: SvgPicture.asset("assets/icons/Search.svg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
