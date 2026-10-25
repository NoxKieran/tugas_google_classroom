import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController textEditingController;
  final bool isPassword;
  final IconData icon;
  final double fontSize;

  const Mytextfield({
    super.key,
    required this.label,
    required this.hint,
    required this.textEditingController,
    required this.isPassword,
    required this.icon,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: fontSize)),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: TextField(
            controller: textEditingController,
            obscureText: isPassword,
            decoration: InputDecoration(
              prefixIcon: icon != null ? Icon(icon) : null,
              // jika ingin tidak ada informasi warning, dari lien code di atas, dapat di rubah seperti di bawah ini
              // prefixIcon: Icon(icon),
              hintText: hint,
              filled: true,
              fillColor: Colors.grey.shade100,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
