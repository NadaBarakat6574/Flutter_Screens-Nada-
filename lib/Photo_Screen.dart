import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const Photo_Screen());
}

class Photo_Screen extends StatelessWidget {
  const Photo_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff4b26),
          leading: const Icon(Icons.arrow_back_sharp),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20.sp, color: Colors.white),
          title: const Text("Photos"),
          actions: const [
            Icon(Icons.domain_verification_outlined, size: 30),
          ],
        ),
        body: Container(
        color: Colors.black,
        ),
      ),
    );
  }
}

