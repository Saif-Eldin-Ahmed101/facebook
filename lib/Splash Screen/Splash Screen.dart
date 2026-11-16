
import 'package:flutter/material.dart';
import 'package:facebook/Login Screen/Login Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/image/App Logo.png",
              width: 100,
              height: 100,
            ),
          ),
          Text(
            "LOGO",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
              color: Color(0xff1877F2),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        children: [
          Text(
            "FROM",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              letterSpacing: 2,
            ),
          ),
          Image.asset(
            "assets/image/Meta Logo.png",
            width: 100,
            height: 50,
          ),
        ],
      ),
    );
  }
}
