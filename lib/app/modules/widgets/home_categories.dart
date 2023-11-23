import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories {
  final String icon;
  final Color color;
  final String title;
  final String place;

  Categories({
    required this.icon,
    required this.color,
    required this.title,
    required this.place,
  });
}

class HomeCategories extends StatelessWidget {
  final List<Categories> categories;

  HomeCategories({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 140,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Categories category = categories[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    color: category.color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: SvgPicture.asset(category.icon),
                  ),
                ),
                Text(
                  category.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.41,
                  ),
                ),
                Text(
                  category.place,
                  style: const TextStyle(
                    color: Color(0xFFB8BBC5),
                    fontSize: 13,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.08,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
