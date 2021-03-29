import 'dart:async';

import 'package:accounting/deffault.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:accounting/routes/auth/signin.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // height: MediaQuery.of(context).size.height,
      //         width: MediaQuery.of(context).size.width ,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Account',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontSize: 28),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SignIn(),
                  ),
                );
              },
              child: Container(
                  // height: 40,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  // width: 40,
                  decoration: BoxDecoration(
                      // color: Colors.grey.shade100.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(13)),
                  child: progress),
            )
          ],
        ),
      ),
    );
  }

  ///this is the progress
  final progress = SpinKitDoubleBounce(
    color: kDeffaultColor,
    size: 40,
  );
}
