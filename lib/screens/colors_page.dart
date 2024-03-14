import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> colors = const [
    ItemModel(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakko',
      enName: 'black',
    ),
    ItemModel(
      sound: 'brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
    ),
    ItemModel(
      sound: 'dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
    ),
    ItemModel(
      sound: 'gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
    ),
    ItemModel(
      sound: 'green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
    ),
    ItemModel(
      sound: 'red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
    ),
    ItemModel(
      sound: 'yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'yellow',
    ),
    ItemModel(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'white',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        //High performance to ListView.builder

        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: colors[index],
            color: Colors.deepPurple,
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
