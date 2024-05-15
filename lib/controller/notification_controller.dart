import 'package:get/get.dart';

class NotificationController extends GetxController{
  RxBool notifications = false.obs;

  setNotifications(bool value){
    notifications.value = value;
  }
}