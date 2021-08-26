import 'package:get/get.dart';

class ReminderAlamcontroller extends GetxController{
  var visibilty =false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    update();
  }
}