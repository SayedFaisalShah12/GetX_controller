import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'message': 'What is your Name',
      'name': 'My Name is Sayed Faisal',
    },

    'ur_PK': {
      'message': 'آپ کا نام کیا ہے',
      'name': 'میرا نام سید فیصل ہے۔',
    }
  };

}