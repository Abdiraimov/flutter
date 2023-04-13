import 'package:flutter/material.dart';
import 'package:lesson13_piano_app3_end_extract/components/container_widget.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Extract Widget'),
        ),
        body: Center(
          child: Column(
            children:   [
              Column(children:  const [
                ContainerWidget(
                  containerdinTexti: 'Lesson 1',
              containerdinTexti2: 'ex 1',
              icon: Icons.email,
              image: 'https://collectionerus.ru/media/preloaded-items/b/bp/bpeshlkzgtqp11df.jpg',

              ),
              SizedBox(
                height: 10,
              ),
              ContainerWidget(containerdinTexti: 'Lesson 2',
              containerdinTexti2: 'ex 2',
              image: 'https://www.amsterdam-dance-event.nl/uploads/images/artists-speakers/_900xAUTO_crop_center-center_none/alan_walker_165727.jpg',),
              SizedBox(
                height: 10,
              ),
              ContainerWidget(containerdinTexti: 'Lesson 3',
              containerdinTexti2: 'ex 3',
              image: 'https://i.discogs.com/He-5z2DMvkkAPVsgsuKtP-1NOxVo9WwfBwtZxJ-ozWM/rs:fit/g:sm/q:90/h:426/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTQ4Mjc2/MjItMTY0MjY0MjIy/Mi0zMDM3LmpwZWc.jpeg',),
              SizedBox(
                height: 10,
              ),
              ContainerWidget(containerdinTexti: 'Lesson 4',
              containerdinTexti2: 'ex 4',
              icon: Icons.search,
              image: 'https://cdn.smehost.net/2020sonymusiccouk-ukprod/wp-content/uploads/2019/10/b4f73a3ec655c386bc197e6e0f07e2b9.jpg',),
              SizedBox(
                height: 10,
              ),
              ContainerWidget(containerdinTexti: 'Lesson 5',
              containerdinTexti2: 'ex 5',
              image: 'https://wallpapers.com/images/featured/9j4agh7wuogg0kp6.jpg',),
              SizedBox(
                height: 10,
              ),
              ContainerWidget(containerdinTexti: 'Lesson 6',
              containerdinTexti2: 'ex 6',
              image: 'https://i1.sndcdn.com/artworks-000324174228-70wqkx-t500x500.jpg',),
              
              ],
              
              ),
              
              
          ]),
        ),
      ),
    );
  }
}

