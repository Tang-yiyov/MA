import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  final String username;
  final String email;

  const ProfileScreen({super.key, required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Username: $username",
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "Email: $email",
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}