import 'package:get/get.dart';

class CountController extends GetxController{
  RxInt counter = 1.obs;

  incrementCounter(){
    counter.value++;
  }

  decrementCounter(){
    counter.value--;
  }
}