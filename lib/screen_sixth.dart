import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/count_controller.dart';
import 'package:getx/controller/notification_controller.dart';
import 'package:getx/controller/rational_controller.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    NotificationController controller = Get.put(NotificationController());
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Six'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text('In this section we will use Getx Controller for notifications'),
            SizedBox(height: height * 0.08,),

            Row(
              children: [
                const Text('Notifications'),
                SizedBox(width: width * 0.4,),
                Obx((){
                  return Switch(value: controller.notifications.value, onChanged: (value){
                    controller.setNotifications(value);
                  });
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
