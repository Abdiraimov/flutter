import 'package:flutter/material.dart';
import 'package:lesson32_capitals_logic_03/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson32_capitals_logic_03/model/continents.dart';
import 'package:lesson32_capitals_logic_03/model/suroo_joop.dart';
import 'package:lesson32_capitals_logic_03/view/test_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Continents> continents = continentsList;

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
          //GridView
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
                            builder: (context) => TestView(suroo: surooJoopList),
                          ),
                        );
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Text(
                                continents[index].name,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: continents[index].colors),
                              ),
                              Expanded(

                                child: SvgPicture.asset(
                                  'assets/continents/${continents[index].image}.svg',
                                  width: 100,
                                  height: 80,
                                  color: continents[index].colors,
                                ),
                              ),
                              
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
