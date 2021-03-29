import 'package:accounting/routes/auth/signup.dart';
import 'package:accounting/routes/homepage/homescreen.dart';
import 'package:accounting/routes/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:accounting/exported_files.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account',
      builder: (BuildContext context, child) {
        return ScrollConfiguration(
          behavior: CustomScrollController(),
          child: child,
        );
      },
      theme: ThemeData(
          primaryColor: Color(0xFFE9A115),
          accentColor: Color(0x14EFAE30),
          scaffoldBackgroundColor: Color(0xFF131218)),
      home: SignUp(),
    );
  }
}

//010101    menu bar color
class CustomScrollController extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
