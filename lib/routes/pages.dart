import 'package:get/get.dart';
import 'package:tugas_google_classroom/bindings/football_binding.dart';
import 'package:tugas_google_classroom/bindings/kalkulator_bindings.dart';
import 'package:tugas_google_classroom/pages/football_pages.dart';
import 'package:tugas_google_classroom/pages/kalkulator_page.dart';
import 'package:tugas_google_classroom/routes/routes.dart';

class Pages {
  // Daftar halaman, controller, dan binding
  static final pages = [
    GetPage(
      name: Routes.kalkulator,
      page: () => KalkulatorPage(),
      binding: KalkulatorBinding(),
    ),
    GetPage(
      name: Routes.football,
      page: () => FootballPages(),
      binding: FootballBinding(),
    ),
  ];
}
