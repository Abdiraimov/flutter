import 'package:flutter/material.dart';
import 'package:lesson30_capitals_ui_01/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson30_capitals_ui_01/view/test_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> continents = [
    'Asia',
    'Europe',
    'North America',
    'South America',
    'Africa',
    'Australia'
  ];
  // List<String> images = [
  //   'africa.svg',
  //   'asia.svg',
  //   'europe.svg',
  //   'north_america.svg',
  //   'australia.svg',
  //   'sourth_america.svg',
  // ];

  Map<dynamic, dynamic> svg = {
    'Asia': 'asia.svg',
    'Africa': 'africa.svg',
    'Australia': 'australia.svg',
    'South America': 'sourth_america.svg',
    'North America': 'north_america.svg',
    'Europe': 'europe.svg',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Мамлекеттер борбору'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: AppColors.black),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            indent: 15,
            endIndent: 15,
            color: AppColors.dividerColor,
            height: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: continents.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TestView(),),);
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Text(
                                continents[index],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset(
                                'assets/continents/${svg[continents[index]]}',
                              )
                            ],
                          )),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
