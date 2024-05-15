import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/count_controller.dart';
import 'package:getx/controller/favorite_controller.dart';
import 'package:getx/controller/image_picker_controller.dart';

class ScreenEighth extends StatefulWidget {
  const ScreenEighth({super.key});

  @override
  State<ScreenEighth> createState() => _ScreenEighthState();
}

class _ScreenEighthState extends State<ScreenEighth> {
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.put(ImagePickerController());

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Eighth'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text('In this section we will use Getx Controller to pick Image from Home'),
            SizedBox(height: height * 0.08,),

            Obx((){
              return Column(
                children: [
                  CircleAvatar(
                      radius: 60,
                      backgroundImage: controller.imagePath.isNotEmpty ?
                      FileImage(File(controller.imagePath.toString())) : null
                  ),

                  ElevatedButton(
                      onPressed: (){
                        controller.getImage();
                      }, child: const Text("Upload Image")
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
