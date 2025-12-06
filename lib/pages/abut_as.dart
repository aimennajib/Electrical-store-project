import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('من نحن'),
        backgroundColor: Color(0xFF219ebc),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'نحن طلاب جامعيين قمنا بتطوير هذا التطبيق كمشروع نهائي لمادة تطوير تطبيقات الموبايل.',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    // color: Colors.white,
                  ),
                ),
              ),
              Text(
                "يهدف التطبيق إلى توفير تجربة تسوق سهلة وممتعة للمستخدمين.",
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
