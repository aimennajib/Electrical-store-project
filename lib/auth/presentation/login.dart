import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF7E57C2), Color(0xFF9575CD)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
              child: const Center(
                child: Text(
                  "مرحباً بكم  ",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF512DA8),
                    ),
                  ),
                  const SizedBox(height: 25),

                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "البريد الإلكتروني",
                      prefixIcon: const Icon(Icons.email_outlined),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "كلمة المرور",
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7E57C2),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 6,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "تسجيل الدخول",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "نسيت كلمة المرور؟",
                        style: TextStyle(color: Color(0xFF512DA8)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("ليس لديك حساب؟ "),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "إنشاء حساب",
                          style: TextStyle(
                            color: Color(0xFF7E57C2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
