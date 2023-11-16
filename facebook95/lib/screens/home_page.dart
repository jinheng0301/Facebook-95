import 'package:facebook95/widgets/buttons.dart';
import 'package:facebook95/model/friends.dart';
import 'package:facebook95/widgets/custom_bottom_nav_bar.dart';
import 'package:facebook95/widgets/tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              SingleChildScrollView(
                child: Elevation95(
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
                          SizedBox(
                            width: size.width / 2,
                            child: TextField95(),
                          ),
                          ButtonWidgets.button95WithText(
                            'Find now',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Elevation95(
                        child: Container(
                          width: size.width,
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: myFriends.length,
                            itemBuilder: (context, index) {
                              final myFriend = myFriends[index];
                              return Container(
                                margin: EdgeInsets.only(right: 10),
                                color: Colors.red,
                                child: Column(
                                  children: [
                                    Elevation95(
                                      child: Image.asset(
                                        '${myFriend.image}',
                                        height: 60,
                                        width: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      myFriend.name,
                                      style: Flutter95.textStyle,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  width: size.width / 1.8,
                                  child: TextField95(),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ButtonWidgets.button95WithText(
                                  'Post now',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ButtonWidgets.button95WithText(
                                  'Live',
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ButtonWidgets.button95WithText(
                                  'Photo',
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ButtonWidgets.button95WithText(
                                  'Check out',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pokedex',
                                    style: Flutter95.textStyle,
                                  ),
                                  Text(
                                    '29 mins',
                                    style: Flutter95.disabledTextStyle,
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Torterra is a Grass & Ground Pokemon which evolves form Grotle. It is vulnerable to ice, flying, bug and fire moves. Torterra strongest moveset is Razor leaf & Frenzy Plant.',
                            style: Flutter95.textStyle,
                          ),
                          Image.asset(
                            'images/post_image/torterra2.webp',
                            height: 300,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PokeABC',
                                    style: Flutter95.textStyle,
                                  ),
                                  Text(
                                    '1h',
                                    style: Flutter95.disabledTextStyle,
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Venusaur is a Grass/Poison-type Pokémon. It is the mascot for Pokémon Green and Pokémon LeafGreen and the final form of Bulbasaur.',
                            style: Flutter95.textStyle,
                          ),
                          Image.asset(
                            'images/post_image/venusaur2.jpg',
                            height: 300,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PokeElon',
                                    style: Flutter95.textStyle,
                                  ),
                                  Text(
                                    '1h',
                                    style: Flutter95.disabledTextStyle,
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Psyduck is constantly stunned by its headache, and usually just stands there vacantly, trying to calm its headache. When the headache gets too bad, its brain cells awaken, allowing it to use strong psychic powers.',
                            style: Flutter95.textStyle,
                          ),
                          Image.asset(
                            'images/post_image/psyduck2.jpg',
                            height: 300,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PokeTrump',
                                    style: Flutter95.textStyle,
                                  ),
                                  Text(
                                    '1h',
                                    style: Flutter95.disabledTextStyle,
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Piplup is a light-blue, penguin-like Pokémon, which is covered in thick down to insulate against the cold. It has a dark blue head with a primarily white face and a short, yellow beak.',
                            style: Flutter95.textStyle,
                          ),
                          Image.asset(
                            'images/post_image/piplup2.png',
                            height: 300,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: CustomBottomNavBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
