import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مساعدة'),
        backgroundColor: Color(0xFF219ebc),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'للمساعدة، يرجى التواصل معنا عبر البريد الإلكتروني: support@example.com',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    // color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "أو الاتصال على رقم الهاتف: +976788888888",
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    // color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
