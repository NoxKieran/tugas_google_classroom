import 'package:flutter/material.dart';

class IdentityWatermark extends StatelessWidget {
  const IdentityWatermark({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Opacity(
          opacity: 0.85,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Nama: Muhammad Iqbal Mualana'),
              Text('Absen: 20'),
              Text('Kelas: XI PPLG 1'),
            ],
          ),
        ),
      ),
    );
  }
}