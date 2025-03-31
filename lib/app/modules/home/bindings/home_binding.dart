import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // ต้องเปลียน lazyPut เป็น put เพราะจะทำให้ controller ถูกสร้างทุกครั้งที่เรียกใช้และพร้อมทำงานตลอดเวลา
    Get.put<HomeController>(HomeController());
  }
}
