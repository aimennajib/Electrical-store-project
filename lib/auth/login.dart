import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:project/auth/sign_in.dart';
import 'package:project/pages/home_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller1 = TextEditingController();
    TextEditingController _controller2 = TextEditingController();
    double height;

    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              color: Color(0xFF219ebc),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Text(
                      " انشاء حساب جديد",
                      style: GoogleFonts.tajawal(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: height * 0.80,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                // padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("اسم المستخدم", textAlign: TextAlign.end),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Color(0xFF219ebc)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      controller: _controller1,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [Text("كلمة المرور", textAlign: TextAlign.end)],
                    ),
                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off),

                        // focusColor: Color(0xFF219ebc),
                        // fillColor: Color(0xFF219ebc),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Color(0xFF219ebc)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      controller: _controller2,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("تاكيد كلمة المرور ", textAlign: TextAlign.end),
                      ],
                    ),
                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off),

                        // focusColor: Color(0xFF219ebc),
                        // fillColor: Color(0xFF219ebc),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Color(0xFF219ebc)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      controller: _controller2,
                    ),

                    // SizedBox(height: 10),
                    SizedBox(height: 30),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF219ebc),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text(
                        ' انشاء حساب',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF219ebc),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Text(
                        '  الرجوع',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
