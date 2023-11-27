import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HCard {
  final String image;
  final String title;
  final String place;
  final double rating;

  HCard(
      {required this.image,
      required this.rating,
      required this.title,
      required this.place});
}

class HomeCard extends StatelessWidget {
  final List<HCard> hCards;
  const HomeCard({super.key, required this.hCards});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 500,
      child: ListView.builder(
        itemCount: hCards.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          HCard hCard = hCards[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        hCard.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  hCard.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.41,
                  ),
                ),
                Text(
                  hCard.place,
                  style: const TextStyle(
                    color: Color(0xFFB8BBC5),
                    fontSize: 13,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.08,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset('images/rating.svg'),
                    Text(hCard.rating.toString())
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
