import 'package:get/get.dart';
import 'package:tugas_google_classroom/models/football_model.dart';

class FootballCtrl extends GetxController {
  final RxList<FootballModel> players = <FootballModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadFootballPlayer();
  }

  void loadFootballPlayer() {
    players.addAll([
      FootballModel(name: 'Messi', position: 'Striker', team: 'Barcelona'),
      FootballModel(
        name: 'C. Ronaldo',
        position: 'Striker',
        team: 'Real Madrid',
      ),
    ]);
  }
}
