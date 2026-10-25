import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_google_classroom/components/mytextfield.dart';
import 'package:tugas_google_classroom/controllers/kalkulator_controller.dart';
import 'package:tugas_google_classroom/routes/routes.dart';

class KalkulatorPage extends StatelessWidget {
  const KalkulatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final KalkulatorController kalkulatorController = Get.find();

    return Scaffold(
      appBar: AppBar(title: Text("My Kalkulator")),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Mytextfield(
              label: "Angka 1",
              hint: "Input angka 1",
              textEditingController: kalkulatorController.txtAngka1,
              isPassword: false,
              icon: Icons.numbers,
              fontSize: 14,
            ),
            Mytextfield(
              label: "Angka 2",
              hint: "Input angka 2",
              textEditingController: kalkulatorController.txtAngka2,
              isPassword: false,
              icon: Icons.numbers,
              fontSize: 14,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    kalkulatorController.penjumlahan();
                  },
                  child: Text("Penjumlahan"),
                ),
                ElevatedButton(
                  onPressed: () {
                    kalkulatorController.pengurangan();
                  },
                  child: Text("Pengurangan"),
                ),
                ElevatedButton(
                  onPressed: () {
                    kalkulatorController.perkalian();
                  },
                  child: Text("Perkalianan"),
                ),
                ElevatedButton(
                  onPressed: () {
                    kalkulatorController.pembagian();
                  },
                  child: Text("Pembagian"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Obx(
              () => Text(
                kalkulatorController.resultCalculator.value.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                kalkulatorController.txtAngka1.clear();
                kalkulatorController.txtAngka2.clear();
                kalkulatorController.resultCalculator.value = 0.0;
              },
              child: Text("Reset"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.football);
              },
              child: Text("Go to Main Menu"),
            ),
          ],
        ),
      ),
    );
  }
}
