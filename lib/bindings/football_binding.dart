import 'package:get/get.dart';
import 'package:tugas_google_classroom/controllers/football_ctr.dart';

class FootballBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FootballCtrl());
  }
}
