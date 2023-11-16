import 'package:facebook95/screens/find_friends.dart';
import 'package:facebook95/screens/home_page.dart';
import 'package:facebook95/widgets/buttons.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: ButtonWidgets.button95WithIcon(
              Icons.dashboard_outlined,
              () {
                Navigator.pushNamed(
                  context,
                  HomePage.id,
                );
              },
            ),
          ),
          Expanded(
            child: ButtonWidgets.button95WithIcon(
              Icons.groups,
              () {
                Navigator.pushNamed(
                  context,
                  FindFriends.id,
                );
              },
            ),
          ),
          Expanded(
            child: ButtonWidgets.button95WithIcon(
              Icons.event,
              () {},
            ),
          ),
          Expanded(
            child: ButtonWidgets.button95WithIcon(
              Icons.public,
              () {},
            ),
          ),
          Expanded(
            child: ButtonWidgets.button95WithIcon(
              Icons.settings,
              () {},
            ),
          ),
        ],
      ),
    );
  }
}
