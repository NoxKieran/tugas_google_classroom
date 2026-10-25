import 'package:get/get.dart';
import 'package:tugas_google_classroom/controllers/kalkulator_controller.dart';

class KalkulatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(KalkulatorController());
  }
}
