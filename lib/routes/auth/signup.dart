import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../../deffault.dart';
import 'form.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          margin: EdgeInsets.symmetric(horizontal: kDeffaultpadding / 2.5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
          child: Column(
            children: [
              Container(
                height: 47,
                width: size.width,
                decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.85),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18),
                    )),
                child: Center(
                  child: Text('Sign Up',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Theme.of(context).primaryColor)),
                ),
              ),
              Expanded(child: RegisterForm())
            ],
          ),
        ),
      ),
    );
  }
}
