import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/abut_as.dart';
import 'package:project/pages/details_screen.dart';
import 'package:project/pages/help.dart';
import 'package:project/pages/product_cart.dart';
import 'package:project/pages/profile.dart';
import 'package:project/product_list/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 70,
        backgroundColor: Color(0xFF219ebc),

        title: Text(
          'مرحبا بمتجر الالكترونيات ',
          style: GoogleFonts.tajawal(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFF1EFF1),

        // surfaceTintColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.only(top: 80, right: 20, left: 20),
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.grey),
                ),
                SizedBox(width: 10),

                Text("Example@gmail.com"),
              ],
            ),
            Divider(thickness: 1, color: Colors.grey),
            ListTile(
              onTap: () => Navigator.pop(context),
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(Icons.home, color: Colors.brown),
              ),
              title: Text("الصفحة الرئيسة"),
              subtitle: Text("تفاصيل اكثر"),
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              ),
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.person,
                  color: const Color.fromARGB(255, 6, 17, 103),
                ),
              ),
              title: Text("المعلومات الشخصية"),
              subtitle: Text("تفاصيل اكثر"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(Icons.info_outline, color: Colors.yellow),
              ),
              title: Text('من نحن'),
              subtitle: Text("تفاصيل اكثر"),
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(Icons.settings, color: Colors.blueAccent),
              ),
              title: Text("الاعدادات"),
              subtitle: Text("تفاصيل اكثر"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Help()),
                );
              },
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.help,
                  color: const Color.fromARGB(255, 6, 17, 103),
                ),
              ),
              title: Text(" مساعدة"),
              subtitle: Text("تفاصيل اكثر"),
            ),
            ListTile(
              onTap: () => SystemNavigator.pop(),
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(Icons.exit_to_app, color: Colors.red),
              ),
              title: Text("الخروج"),
              subtitle: Text("تفاصيل اكثر"),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1EFF1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                ListView.builder(
                  padding: EdgeInsets.all(20),
                  itemCount: product.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: product[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: product[index]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
