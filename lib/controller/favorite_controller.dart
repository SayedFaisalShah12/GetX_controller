import 'package:get/get.dart';

class favoriteController extends GetxController{

  RxList<String> fruit = ['Apple','Banana','Java','Pineapple', 'Watermelon', 'orange','grapes'].obs;
  RxList TemFav = [].obs;

  addToFavorite(String value){
    TemFav.add(value);
  }

  RemoveFromFavorite(String value){
    TemFav.remove(value);
  }
}