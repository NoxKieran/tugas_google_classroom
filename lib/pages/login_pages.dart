import 'package:tugas_google_classroom/components/mytextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  var statuslogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // LOGO SEKOLAH
                  Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 15),

                  const Text("Silahkan masukkan username dan password"),

                  const SizedBox(height: 10),

                  // USERNAME
                  Mytextfield(
                    label: "username",
                    hint: "input username",
                    textEditingController: txtUsername,
                    isPassword: false,
                    icon: Icons.email_outlined,
                    fontSize: 14,
                  ),

                  // PASSWORD
                  Mytextfield(
                    label: "password",
                    hint: "input password",
                    textEditingController: txtPassword,
                    isPassword: true,
                    icon: Icons.lock_outline,
                    fontSize: 14,
                  ),

                  // LOGIN
                  ElevatedButton(
                    onPressed: () {
                      if (txtUsername.text == "admin" &&
                          txtPassword.text == "admin123") {
                        setState(() {
                          statuslogin = "sukses login";
                        });
                      } else {
                        setState(() {
                          statuslogin = "gagal login";
                        });
                      }
                    },
                    child: const Text("login"),
                  ),

                  Text(statuslogin),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 15),
            child: const Column(
              children: [
                Text(
                  "Nama       : Muhammad Iqbal Maulana",
                  style: TextStyle(fontSize: 14),
                ),
                Text("Kelas      : XI PPLG 1", style: TextStyle(fontSize: 14)),
                Text("Absen/NIS  : 20/5068", style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
