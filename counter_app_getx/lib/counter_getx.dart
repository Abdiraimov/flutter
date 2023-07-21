import 'package:counter_app_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGetx extends StatelessWidget {
  const CounterGetx({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    print('build worked');
    
    final controller = Get.put(Controller());
    print(controller.count);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx((){
              print('obx');
             return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}