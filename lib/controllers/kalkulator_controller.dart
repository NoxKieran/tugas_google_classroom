import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var resultCalculator = 0.0.obs;

  final TextEditingController txtAngka1 = TextEditingController();
  final TextEditingController txtAngka2 = TextEditingController();

  void penjumlahan() {
    var jumlah = int.parse(txtAngka1.text) + int.parse(txtAngka2.text);

    print("hasil jumlah $jumlah");

    resultCalculator.value = jumlah.toDouble();
  }

  void pengurangan() {
    var kurang = int.parse(txtAngka1.text) - int.parse(txtAngka2.text);

    print("hasil pengurangan $kurang");

    resultCalculator.value = kurang.toDouble();
  }

  void perkalian() {
    var kali = int.parse(txtAngka1.text) * int.parse(txtAngka2.text);

    print("hasil perkalian $kali");

    resultCalculator.value = kali.toDouble();
  }

  void pembagian() {
    var bagi = int.parse(txtAngka1.text) / int.parse(txtAngka2.text);

    print("hasil pembagian $bagi");

    resultCalculator.value = bagi;
  }

  @override
  void onClose() {
    txtAngka1.dispose();
    txtAngka2.dispose();
    super.onClose();
  }
}
