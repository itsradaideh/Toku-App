import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  // final Number one = const Number(
  //     image: 'assets/images/numbers/number_one.png',
  //     jpName: 'ichi',
  //     enName: 'one');
  final List<ItemModel> number = const [
    ItemModel(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'one',
    ),
    ItemModel(
      sound: 'number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
    ),
    ItemModel(
      sound: 'number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
    ),
    ItemModel(
      sound: 'number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'four',
    ),
    ItemModel(
      sound: 'number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Ato',
      enName: 'five',
    ),
    ItemModel(
      sound: 'number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
    ),
    ItemModel(
      sound: 'number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
    ),
    ItemModel(
      sound: 'number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'eight',
    ),
    ItemModel(
      sound: 'number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      enName: 'nine',
    ),
    ItemModel(
      sound: 'number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        //High performance to ListView.builder

        itemCount: number.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: number[index],
            color: Colors.deepPurple,
            itemType: 'numbers',
          );
        },
      ),
      // ListView(
      // children: [
      //   Column(
      //     children: [
      //       ItemModel(num: item[0]),
      //       ItemModel(num: item[1]),
      //       ItemModel(num: item[2]),
      //       ItemModel(num: item[3]),
      //       ItemModel(num: item[4]),
      //       ItemModel(num: item[5]),
      //       ItemModel(num: item[6]),
      //       ItemModel(num: item[7]),
      //       ItemModel(num: item[8]),
      //       ItemModel(num: item[9]),
      //     ],
      //   ),
      // ],
      // ),
      // children: getList(item),
    );
  }

  List<Widget> getList(List<ItemModel> item) {
    List<Widget> itemList = [];
    for (int i = 0; i < item.length; i++) {
      itemList.add(ListItem(
        item: item[i],
        color: const Color(0xFFF99531),
        itemType: 'numbers',
      ));
    }
    return itemList;
  }
}
