import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_google_classroom/controllers/football_ctr.dart';

class FootballPages extends StatelessWidget {
  FootballPages({super.key});

  final FootballCtrl controller = Get.find<FootballCtrl>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Players")), //AppBar
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.players.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(controller.players[index].name),
                subtitle: Text(controller.players[index].position),
              ),
            );
          },
        );
      }),
    );
  }
}
