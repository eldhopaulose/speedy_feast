import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:speedy_feast/app/data/common/token.dart';
import 'package:speedy_feast/app/modules/widgets/home_card.dart';

import 'package:speedy_feast/app/modules/widgets/home_categories.dart';
import 'package:speedy_feast/app/networks/models/get_all_food.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<Categories> categories = [
    Categories(
      icon: 'images/bug.svg',
      color: const Color(0xFFFFC107),
      title: 'Burgers',
      place: '1126 places',
    ),
    Categories(
      icon: 'images/bug.svg',
      color: const Color(0xFFFFC107),
      title: 'Burgers',
      place: '1126 places',
    ),
    Categories(
      icon: 'images/bug.svg',
      color: const Color(0xFFFFC107),
      title: 'Burgers',
      place: '1126 places',
    ),
    Categories(
      icon: 'images/bug.svg',
      color: const Color(0xFFFFC107),
      title: 'Burgers',
      place: '1126 places',
    ),
    Categories(
      icon: 'images/bug.svg',
      color: const Color(0xFFFFC107),
      title: 'Burgers',
      place: '1126 places',
    ),
    Categories(
      icon: 'images/bug.svg',
      color: const Color(0xFFFFC107),
      title: 'Burgers',
      place: '1126 places',
    ),
  ];

  static String Url =
      'https://images.unsplash.com/photo-1550507992-eb63ffee0847?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNhbmR3aWNofGVufDB8fDB8fHww';

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Kamilklkn',
                      style: TextStyle(
                        color: Color(0xFF0A1F44),
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.08,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,

                      radius: 17.5, // Half of the desired width/height
                      child: Text(
                        'E',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 292,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      cursorColor: Color(0xff7E8389),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        iconColor: Color(0xff7E8389),
                        prefixIconColor: Color(0xff7E8389),
                        suffixIcon: Icon(Icons.mic),
                        suffixIconColor: Color(0xff7E8389),
                        hintText: 'Search by restaurant or food',
                      ),
                    ),
                  ),
                  Container(
                    width: 38.21,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF2F2F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Icon(Icons.filter_alt_outlined),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Top categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.08,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Show all',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFFFCC00),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(child: SvgPicture.asset('images/right.svg'))
                ],
              ),
              HomeCategories(categories: categories),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Near You',
                    style: TextStyle(
                      color: Color(0xFF0A1F44),
                      fontSize: 22,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.08,
                    ),
                  ),
                  FutureBuilder(
                    future: controller.fetchAllData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text('Error: ${snapshot.error}'),
                        );
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: Text("loading"),
                        );
                      }

                      if (snapshot.hasData) {
                        final getAllData = snapshot.data;
                        if (getAllData != null && getAllData.data != null) {
                          // Convert List<Data> to List<HCard>
                          List<HCard> hCards = getAllData.data!
                              .map((data) => HCard(
                                    title: data.title ?? "",
                                    image: data.image ?? "",
                                    rating: data.star ?? 0.0,
                                    place: data.location ?? "",
                                  ))
                              .toList();

                          return HomeCard(hCards: hCards);
                        } else {
                          return Text('${getAllData?.error}');
                        }
                      }

                      return const Text("sfs");
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
