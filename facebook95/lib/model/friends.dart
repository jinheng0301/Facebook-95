class Friends {
  final String image;
  final String name;
  final int mutualFriend;

  Friends({
    required this.image,
    required this.name,
    required this.mutualFriend,
  });
}

final myFriendList = [
  Friends(
    image: 'images/profile_image/squirtile.png',
    name: 'pokemon1',
    mutualFriend: 20,
  ),
  Friends(
    image: 'images/profile_image/pikachu.jpg',
    name: 'pokemon2',
    mutualFriend: 30,
  ),
  Friends(
    image: 'images/profile_image/psyduck.png',
    name: 'pokemon3',
    mutualFriend: 35,
  ),
  Friends(
    image: 'images/profile_image/torterra.png',
    name: 'pokemon4',
    mutualFriend: 80,
  ),
  Friends(
    image: 'images/profile_image/charmander.png',
    name: 'pokemon5',
    mutualFriend: 20,
  ),
  Friends(
    image: 'images/profile_image/venusaur.jpeg',
    name: 'pokemon6',
    mutualFriend: 20,
  ),
  Friends(
    image: 'images/profile_image/meowth.png',
    name: 'pokemon7',
    mutualFriend: 20,
  ),
  Friends(
    image: 'images/profile_image/caterpie.png',
    name: 'pokemon8',
    mutualFriend: 20,
  ),
  Friends(
    image: 'images/profile_image/bulbasaur.png',
    name: 'pokemon9',
    mutualFriend: 20,
  ),
  Friends(
    image: 'images/profile_image/piplup.png',
    name: 'pokemon10',
    mutualFriend: 20,
  ),
];
