import 'package:accounting/domain/appstate/current_userstate.dart';
import 'package:accounting/domain/validatefield/validate_registration_field.dart';
import 'package:accounting/domain/validatefield/validate_signin_field.dart';
import 'package:accounting/routes/auth/email_verification.dart';
import 'package:accounting/routes/auth/signup.dart';
import 'package:accounting/routes/auth/signup_form.dart';
import 'package:accounting/routes/homepage/homescreen.dart';
import 'package:accounting/routes/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:accounting/exported_files.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: userState(),
        ),
        ChangeNotifierProvider<ValidateField>(
          create: (_) => ValidateField(),
        ),
        ChangeNotifierProvider<ValidateSignIn>(
          create: (_) => ValidateSignIn(),
        ),
      ],
      child: MaterialApp(
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
          home: SignIn()
          // HomePage()
          // SignUp(),
          ),
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
