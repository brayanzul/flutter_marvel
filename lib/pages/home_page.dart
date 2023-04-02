import 'package:flutter/material.dart';
import 'package:flutter_marvel/utils/extensions.dart';
import 'package:flutter_marvel/widgets/custom_padding.dart';
import 'package:flutter_marvel/widgets/list_row_tile_comic.dart';
import 'package:flutter_marvel/widgets/list_tile_comic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        child: Column(
          children: [
            kToolbarHeight.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      child: Text("UP"),
                    ),
                    20.ph,
                    const Text("Usuario Pruebas")
                  ],
                ),
                const Icon(Icons.search, size: 32,),
              ],
            ),
            30.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Best Selling Comics",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            30.pv,
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const ListTileComic(
                    image: 'assets/B_S.jpg',
                    title: 'Batman & SpiderMan',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/marvel-zombies.jpg',
                    title: 'Marvel Zombies',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/venom.jpg',
                    title: 'Venom',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/Ironman.jpg',
                    title: 'Iron Man',
                  ),
                ],
              ),
            ),
            15.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Last Updated",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            15.pv,
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTileRowComic(
                    date: DateTime.now(),
                    title: 'Venom',
                    image: 'assets/venom.jpg',
                    price: 19.80,
                    rate: 4.7,
                  ),
                  15.pv,
                  ListTileRowComic(
                    date: DateTime.now(),
                    title: 'Marvel Zombies',
                    image: 'assets/marvel-zombies.jpg',
                    price: 23.80,
                    rate: 4.0,
                  ),
                  15.pv,
                  ListTileRowComic(
                    date: DateTime.now(),
                    title: 'Iron Man',
                    image: 'assets/Ironman.jpg',
                    price: 25.45,
                    rate: 4.9,
                  ),
                  15.pv,
                  ListTileRowComic(
                    date: DateTime.now(),
                    title: 'Batman & Spiderman',
                    image: 'assets/B_S.jpg',
                    price: 27.33,
                    rate: 3.7,
                  ),
          ]),
            ),
          ],
        ),
      ),
    );
  }
}
