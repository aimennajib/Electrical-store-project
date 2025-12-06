import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double height;

    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),
      appBar: AppBar(
        title: const Text('الملف الشخصي'),
        backgroundColor: Color(0xFF219ebc),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Color(0xFF219ebc),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(30),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      // backgroundImage: AssetImage('assets/cv.png'),
                      child: Icon(Icons.person, size: 60, color: Colors.grey),
                    ),
                  ),
                  const Text(
                    "اسم المستخدم:  أيمن الزبيدي",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
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
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "البريد الإلكتروني:",
                          style: TextStyle(
                            color: Color.fromARGB(255, 34, 59, 102),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "aimenalzubidi@gmail.com ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "كلمة المرور:",
                          style: TextStyle(
                            color: Color.fromARGB(255, 34, 59, 102),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "ai121dd",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
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
