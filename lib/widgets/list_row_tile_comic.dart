import 'package:flutter/material.dart';
import 'package:flutter_marvel/utils/extensions.dart';

class ListTileRowComic extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final DateTime date;
  final double rate;

  const ListTileRowComic({
    super.key, 
    required this.title,
    required this.image, 
    required this.price, 
    required this.date, 
    required this.rate
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 230,
          child: Image.asset(image),
        ),
        15.ph,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 22),
              ),
              15.pv,
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  15.ph,
                  Text(
                    rate.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              15.pv,
              Text(
                'On Sale $date',
                style: const TextStyle(color: Colors.grey, fontSize: 18),
              ),
              15.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'US Price: \$$price',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.arrow_right_alt_sharp),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}