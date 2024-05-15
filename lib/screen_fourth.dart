import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/count_controller.dart';

class ScreenFourth extends StatefulWidget {
  const ScreenFourth({super.key});

  @override
  State<ScreenFourth> createState() => _ScreenFourthState();
}

class _ScreenFourthState extends State<ScreenFourth> {
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Fourth'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text('In this section we will use getx controller for state management'),
            SizedBox(height: height * 0.08,),
            Obx((){
              return Text(
              controller.counter.toString(),
              style: const TextStyle(fontSize: 60),);
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  controller.incrementCounter();
                  }, child: const Text('Add')),

                SizedBox(width: width *0.01,),

                ElevatedButton(onPressed: (){
                    controller.decrementCounter();
                }, child: const Text('Subtract')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
