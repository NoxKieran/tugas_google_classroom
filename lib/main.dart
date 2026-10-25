import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_google_classroom/routes/pages.dart';
import 'package:tugas_google_classroom/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ini Title',
      initialRoute: Routes.kalkulator,
      getPages: Pages.pages,
    );
  }
}
