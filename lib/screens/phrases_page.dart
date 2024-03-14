// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrases = const [
    ItemModel(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    ItemModel(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programming',
    ),
    ItemModel(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    ItemModel(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    ItemModel(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name',
    ),
    ItemModel(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    ItemModel(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling',
    ),
    ItemModel(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming',
    ),
    ItemModel(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai, kimasu',
      enName: 'yes im coming',
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
        title: const Text('phrases'),
      ),
      body: ListView.builder(
        //High performance to ListView.builder

        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: phrases[index],
            color: Colors.deepPurple,
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
