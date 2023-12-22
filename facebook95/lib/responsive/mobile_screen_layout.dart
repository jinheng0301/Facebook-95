import 'package:facebook95/model/global_variables.dart';
import 'package:facebook95/screens/find_friends.dart';
import 'package:facebook95/screens/home_page.dart';
import 'package:facebook95/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
        children: homeScreenItems,
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
            icon: ButtonWidgets.button95WithIcon(
              Icons.dashboard_outlined,
              () {
                _page == 0
                    ? Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      )
                    : Container();
              },
            ),
          ),
          BottomNavigationBarItem(
            icon: ButtonWidgets.button95WithIcon(
              Icons.groups,
              () {
                _page == 1
                    ? Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => FindFriends(),
                        ),
                      )
                    : Container();
              },
            ),
          ),
          BottomNavigationBarItem(
            icon: ButtonWidgets.button95WithIcon(
              Icons.event,
              () {},
            ),
          ),
          BottomNavigationBarItem(
            icon: ButtonWidgets.button95WithIcon(
              Icons.public,
              () {},
            ),
          ),
          BottomNavigationBarItem(
            icon: ButtonWidgets.button95WithIcon(
              Icons.settings,
              () {},
            ),
          ),
        ],
      ),
    );
  }
}
