import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../deffault.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 75.0,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    ///validation code is at the top and comes first
                    onChanged: (value) {},
                    keyboardType: TextInputType.emailAddress,

                    /// decoration follows below
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      contentPadding:
                          EdgeInsets.only(right: 5, left: 10, top: 10),
                      labelText: 'Email',
                      // errorText: 'kh',
                      errorStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    enableSuggestions: false,
                  ),
                ],
              ),
            ),
            Container(
              height: 65.0,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  // errorText: 'gff',
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'NG',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 75.0,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    ///validation code is at the top and comes first
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,

                    /// decoration follows below
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      contentPadding:
                          EdgeInsets.only(right: 5, left: 10, top: 10),
                      labelText: 'Middle Name',
                      hintText: '(Optional)',
                      errorStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    enableSuggestions: false,
                  ),
                ],
              ),
            ),
            Container(
              height: 75,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    ///validation code is at the top and comes first
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,

                    /// decoration follows below
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      contentPadding:
                          EdgeInsets.only(right: 5, left: 10, top: 10),
                      labelText: 'First Name',
                      // errorText: 'kh',
                      errorStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    enableSuggestions: false,
                  ),
                ],
              ),
            ),
            Container(
              height: 75,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    ///validation code is at the top and comes first
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,

                    /// decoration follows below
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      contentPadding:
                          EdgeInsets.only(right: 5, left: 10, top: 10),
                      labelText: 'Last Name',
                      // errorText: 'kh',
                      errorStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    enableSuggestions: false,
                  ),
                ],
              ),
            ),
            Container(
              height: 75,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    ///validation code is at the top and comes first
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,

                    /// decoration follows below
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      contentPadding:
                          EdgeInsets.only(right: 5, left: 10, top: 10),
                      labelText: 'Password',
                      // errorText: 'kh',
                      errorStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    enableSuggestions: false,
                  ),
                ],
              ),
            ),
            Container(
              height: 75,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    ///validation code is at the top and comes first
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,

                    /// decoration follows below
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      contentPadding:
                          EdgeInsets.only(right: 5, left: 10, top: 10),
                      labelText: 'Confirm password',
                      errorText: 'Minimum of 8 Alpha numeric characters',
                      errorStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    enableSuggestions: false,
                  ),
                ],
              ),
            ),

            //

            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => HomePage()));
              },
              child: Container(
                height: 53.0,
                width: size.width,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                constraints: BoxConstraints(maxWidth: 345),
                decoration: BoxDecoration(
                    color: kDeffaultColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Submit',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40.0),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Already have account ?  ',
                          style: Theme.of(context).textTheme.subtitle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor),
                          children: [
                        TextSpan(
                            text: 'Sign In',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              })
                      ]))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
//\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|
// 2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|
// 4[987654310]|3[9643210]|2[70]|7|1)\d{1,14}$
