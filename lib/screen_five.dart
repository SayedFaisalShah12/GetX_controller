import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/count_controller.dart';
import 'package:getx/controller/rational_controller.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    RationalController controller = Get.put(RationalController());
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Five'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text('In this section we will use the rational example using flutter'),
            SizedBox(height: height * 0.08,),
            Obx((){
              return Container(
                height: height * 0.2,
                width: width * 0.7,
                color: Colors.redAccent.withOpacity(controller.opacity.toDouble()),
              );
            }),
            Obx((){
              return Slider(value: controller.opacity.value, onChanged: (value){
                controller.opacity.value = value;
              });
            }),

          ],
        ),
      ),
    );
  }
}
