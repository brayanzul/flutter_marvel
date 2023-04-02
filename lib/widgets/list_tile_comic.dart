import 'package:flutter/material.dart';
import 'package:flutter_marvel/utils/extensions.dart';

class ListTileComic extends StatelessWidget {
  final String image;
  final String title;

  const ListTileComic({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 270,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image)
          ),
        ),
        5.pv,
        Text(
          title.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
