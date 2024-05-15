import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
           const Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('In this section we will use translations to convet languages'),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en','US'));
              }, child: Text('English')),

              SizedBox(width: 20,),

              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur','PK'));
              }, child: Text('urdu'))
            ],
          ),
        ],
      ),
    );
  }
}
