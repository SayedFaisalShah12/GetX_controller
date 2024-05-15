import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  List<String> Name = [
    '/screen_one',
    '/screen_two',
    '/screen_three',
    '/screen_fourth',
    '/screen_five',
    '/screen_six',
    '/screen_seventh',
    '/screen_eighth',
    '/screen_nineth',
        ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title:const Text('Getx Dialog Alert'),
                subtitle: const Text('Getx Dialog Alert with getx'),
                onTap: (){
                  Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: const EdgeInsets.only(top: 20),
                    contentPadding: const EdgeInsets.all(20),
                    middleText: 'Are you sure you want to delete',
                    confirm: TextButton(onPressed: (){}, child: const Text('Delete')),
                    cancel: TextButton(onPressed: (){
                      Get.back();
                    }, child: const Text('Cancel')),
                  );
                },
              ),
            ),
            SizedBox(height: 30,),

            Card(
              child: ListView.builder(
                  itemCount: Name.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                      return ListTile(
                        onTap: (){
                          Get.toNamed(Name[index].toString());
                        },
                        title: Text('Go to Screen ${index + 1}'),
                      );
              }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
