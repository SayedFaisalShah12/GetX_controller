import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/count_controller.dart';
import 'package:getx/controller/favorite_controller.dart';
import 'package:getx/controller/notification_controller.dart';
import 'package:getx/controller/rational_controller.dart';

class ScreenSeventh extends StatefulWidget {
  const ScreenSeventh({super.key});

  @override
  State<ScreenSeventh> createState() => _ScreenSeventhState();
}

class _ScreenSeventhState extends State<ScreenSeventh> {
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    favoriteController controller = Get.put(favoriteController());

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Seventh'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text('In this section we will use Getx Controller to select or deSelect the favorite food'),
            SizedBox(height: height * 0.08,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: controller.fruit.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      onTap: (){
                        if(controller.TemFav.contains(controller.fruit[index].toString())){
                          controller.TemFav.remove(controller.fruit[index].toString());
                        }else{
                          controller.TemFav.add(controller.fruit[index].toString());
                        }
                      },
                      title: Text(controller.fruit[index].toString()),
                      trailing: Obx((){
                        return Icon(
                          Icons.favorite,
                          color: controller.TemFav.contains(controller.fruit[index].toString()) ? Colors.red : Colors.white,
                        );
                      })
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
