import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 3.obs; // Observable variable

  void changeIndex(int index) {
    selectedIndex.value = index; // Update the selected index
  }
}
