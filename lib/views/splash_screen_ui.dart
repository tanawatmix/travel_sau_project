import 'package:flutter/material.dart';
import 'package:travel_sau_project/views/login_ui.dart';

class SplashScreeUI extends StatefulWidget {
  const SplashScreeUI({super.key});

  @override
  State<SplashScreeUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreeUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginUI(),
        ),
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              'บันทึกการเดินทาง',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            CircularProgressIndicator(
              color: Colors.grey[800],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              'Tanawat Netsutthirot',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: MediaQuery.of(context).size.height * 0.02,
              ),
            ),
            Text(
              'DTI 6552410002',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: MediaQuery.of(context).size.height * 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}