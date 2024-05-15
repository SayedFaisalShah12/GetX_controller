import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/api_controller.dart';
import 'package:getx/controller/count_controller.dart';
import 'package:getx/controller/favorite_controller.dart';
import 'package:getx/controller/image_picker_controller.dart';

class ScreenNineth extends StatefulWidget {
  const ScreenNineth({super.key});

  @override
  State<ScreenNineth> createState() => _ScreenNinethState();
}

class _ScreenNinethState extends State<ScreenNineth> {

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Nine'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text('In this section we will use Getx Controller to pick Image from Home'),
              SizedBox(height: height * 0.08,),
        
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: controller.emailController.value,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 30,),
                    TextFormField(
                      controller: controller.passwordController.value,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 40,),
                    ElevatedButton(
                        onPressed: (){
                          controller.loginApi();
                        }, child: const Text('Login')),
                    const Text('The Email is : eve.holt@reqres.in \n The Password is : cityslicka'),
                    const SizedBox(height: 30,),
        
                    ElevatedButton(
                        onPressed: (){
                          controller.UpdateApi();
                        }, child: const Text('Update')),
                    const Text('The Email is : morpheus \n The Password is : zion resident'),
                    const SizedBox(height: 30,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
