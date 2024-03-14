import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
    required this.itemType,
  }) : super(key: key);

  final ItemModel item;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return item.image != null
        ? Container(
            padding: const EdgeInsets.only(right: 5),
            height: 100,
            color: color,
            child: Row(
              children: [
                Container(
                    color: const Color.fromARGB(255, 243, 240, 240),
                    child: Image.asset(item.image!)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      AudioCache player1 =
                          AudioCache(prefix: 'assets/sounds/$itemType/');
                      player1.play(item.sound);
                    } on Exception {
                      // TODO
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 77,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.enName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        item.jpName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      AudioCache player =
                          AudioCache(prefix: 'assets/sounds/$itemType/');
                      player.play(item.sound);
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
  }
}
