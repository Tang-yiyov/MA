import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:pos_app/Screen/login_screen.dart';

class MenuScreen extends StatelessWidget {
  final VoidCallback onLogout;

  const MenuScreen({super.key, required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: HexColor("#1976D2"),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () {
          onLogout();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
        },
        child: const Text("Logout", style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}