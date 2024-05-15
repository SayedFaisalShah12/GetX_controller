import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void loginApi() async{
      try{
        final response = await post(Uri.parse('https://reqres.in/api/login'),
            body: {
              'email' : emailController.value.text,
              'password' : passwordController.value.text,
            }
        );

        var data = jsonDecode(response.body);
        if(response.statusCode == 200){
          print(data);
          Get.snackbar('Login Successful', 'Congratulation');
        }else{
          Get.snackbar('Login Failed', data['error']);
        }
      }
      catch(e){
        Get.snackbar('Exception', e.toString());
      }
  }

  void UpdateApi() async{
    try{
      final response = await put(Uri.parse('https://reqres.in/api/users/2'),
          body: {
            'name' : emailController.value.text,
            'job' : passwordController.value.text,
          }
      );

      var data = jsonDecode(response.body);

      if(response.statusCode == 200){
        print(data);
        Get.snackbar('Update Successful', 'Congratulation');
      }else{
        Get.snackbar('Login Failed', data['error']);
      }
    }
    catch(e){
      Get.snackbar('Exception', e.toString());
    }
  }
}