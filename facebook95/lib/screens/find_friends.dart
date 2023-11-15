import 'package:facebook95/model/friends.dart';
import 'package:facebook95/widgets/buttons.dart';
import 'package:facebook95/widgets/custom_bottom_nav_bar.dart';
import 'package:facebook95/widgets/tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

class FindFriends extends StatefulWidget {
  const FindFriends({super.key});

  @override
  State<FindFriends> createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  List<Friends> myFriends = myFriendList;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Scaffold95(
        title: 'Facebook',
        toolbar: Toolbar95(
          actions: ToolBar.actions,
        ),
        body: Container(
          height: size.height / 1.15,
          width: size.width,
          child: Stack(
            children: [
              Elevation95(
                type: Elevation95Type.down,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWidgets.button95WithIcon(
                          Icons.camera_alt,
                          () {},
                        ),
                        Text(
                          'Friend Requests',
                          style: Flutter95.textStyle,
                        ),
                        ButtonWidgets.button95WithText(
                          'Add',
                        ),
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: myFriends.length,
                        itemBuilder: (context, index) {
                          final myFriend = myFriends[index];
                          return Container(
                            height: 60,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  '${myFriend.image}',
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        myFriend.name,
                                        style: Flutter95.textStyle,
                                      ),
                                      Text(
                                        '${myFriend.mutualFriend.toString()} mutual friends',
                                        style: Flutter95.textStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    ButtonWidgets.button95WithText(
                                      'Confirm',
                                    ),
                                    ButtonWidgets.button95WithText(
                                      'Delete',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ], // Closing bracket for the Column widget
                ),
              ),
              Positioned(
                bottom: 0,
                child: CustomBottomNavBar(),
              ),
            ], // Closing bracket for the Stack widget
          ),
        ),
      ),
    );
  }
}
