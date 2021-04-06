import 'dart:convert';
import 'dart:io';

import 'package:accounting/domain/auth/register_and_routepage.dart';
import 'package:accounting/domain/validatefield/validate_registration_field.dart';
import 'package:animations/animations.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';

import '../../deffault.dart';
import 'email_verification.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key key,
  }) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

bool _isnotVisible = true;

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    void _submitform(
        {String email,
        mobile,
        middle,
        firstname,
        lastname,
        password,
        pin}) async {
      var formresponse = await postForm(
          email: email,
          tel: mobile,
          middleName: middle,
          firstName: firstname,
          lastName: lastname,
          pwd: password,
          pin: pin);
      //
      var data = json.decode(formresponse.body); //converts the response to json

      if (formresponse is SocketException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 5),
          content: Text(
            'Check your network Connection',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ));
        print('not nice');
      } else if (formresponse.statusCode == 200 ||
          formresponse.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 5),
          content: Text(
            'Sign Up Successful !',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ));
//
        ///get the email out of [data] field containing the json to be used
        ///as username otp validation
        var username = data["email"];
        showModal(
          context: context,
          configuration: FadeScaleTransitionConfiguration(
              transitionDuration: Duration(milliseconds: 400),
//                  reverseTransitionDuration: Duration(milliseconds: 400),
              barrierColor: Colors.black26),
          builder: (BuildContext context) {
            return VerifyOTP(email: username); //send the token to the verify
            //mail otp page

            ///build up the otp page to verification
          },
        );

        //
      } else if (formresponse.statusCode >= 400) {
        ///this happens when the the failure response comes from the servere
        ///due to wrong details or other errors resulting from the user
        ///details submited

        var message = data["message"]; //get the message out of the json
        // converted into [data] field
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 5),
          content: Text(
            message,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ));
      } else {
        print('this is unknown error check your network connection');
      }
    }

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
                  Consumer<ValidateField>(
                    builder: (context, validatemail, child) => TextFormField(
                      ///validation code is at the top and comes first
                      onChanged: (value) {
                        validatemail.validateEmail(value);
                      },
                      keyboardType: TextInputType.emailAddress,

                      /// decoration follows below
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        contentPadding:
                            EdgeInsets.only(right: 5, left: 10, top: 10),
                        labelText: 'Email',
                        errorText: validatemail.email.error,
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
                  ),
                ],
              ),
            ),
            Container(
              height: 65.0,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Consumer<ValidateField>(
                builder: (context, mobileN, child) => IntlPhoneField(
                  decoration: InputDecoration(
                    errorText: mobileN.mobileNumber.error,
                    contentPadding: EdgeInsets.all(10),
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'NG',
                  onChanged: (phone) {
                    mobileN.validatMobileNumber(phone.completeNumber);
                    // print(phone.completeNumber);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 78.0,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer<ValidateField>(
                    builder: (context, middlename, child) => TextFormField(
                      ///validation code is at the top and comes first
                      onChanged: (value) {
                        middlename.validatemiddleName(value);
                      },
                      keyboardType: TextInputType.text,

                      /// decoration follows below
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        contentPadding:
                            EdgeInsets.only(right: 5, left: 10, top: 10),
                        labelText: 'Middle Name',
                        hintText: '(Optional)',
                        errorText: middlename.middlename.error,
                        errorStyle: TextStyle(
                          fontSize: 13,
                        ),
                      ),

                      style: TextStyle(
                        letterSpacing: 2,
                      ),
                      enableSuggestions: false,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 78,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer<ValidateField>(
                    builder: (context, firstname, child) => TextFormField(
                      ///validation code is at the top and comes first
                      onChanged: (value) {
                        firstname.validatefirstName(value);
                      },
                      keyboardType: TextInputType.text,

                      /// decoration follows below
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        contentPadding:
                            EdgeInsets.only(right: 5, left: 10, top: 10),
                        labelText: 'First Name',
                        errorText: firstname.firstname.error,
                        errorStyle: TextStyle(
                          fontSize: 13,
                        ),
                      ),

                      style: TextStyle(
                        letterSpacing: 2,
                      ),
                      enableSuggestions: false,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 78,
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer<ValidateField>(
                    builder: (context, lastname, child) => TextFormField(
                      ///validation code is at the top and comes first
                      onChanged: (value) {
                        lastname.validatelastName(value);
                      },
                      keyboardType: TextInputType.text,

                      /// decoration follows below
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        contentPadding:
                            EdgeInsets.only(right: 5, left: 10, top: 10),
                        labelText: 'Last Name',
                        errorText: lastname.lastname.error,
                        errorStyle: TextStyle(
                          fontSize: 13,
                        ),
                      ),

                      style: TextStyle(
                        letterSpacing: 2,
                      ),
                      enableSuggestions: false,
                    ),
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
                  Consumer<ValidateField>(
                    builder: (context, password, child) => TextFormField(
                      ///validation code is at the top and comes first
                      onChanged: (value) {
                        password.validatPassword(value);
                      },
                      keyboardType: TextInputType.text,

                      /// decoration follows below
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        contentPadding:
                            EdgeInsets.only(right: 5, left: 10, top: 10),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isnotVisible =
                                    _isnotVisible == true ? false : true;
                              });
                            },
                            child: _isnotVisible == true
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)),
                        labelText: 'Password',
                        errorText: password.password.error,
                        errorStyle: TextStyle(
                          fontSize: 13,
                        ),
                      ),

                      obscureText: _isnotVisible,
                      style: TextStyle(
                        letterSpacing: 2,
                      ),
                      enableSuggestions: false,
                    ),
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
                  Consumer<ValidateField>(
                    builder: (context, Pin, child) => TextFormField(
                      ///validation code is at the top and comes first
                      onChanged: (value) {
                        Pin.validatPin(value);
                      },
                      keyboardType: TextInputType.number,

                      /// decoration follows below
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        contentPadding:
                            EdgeInsets.only(right: 5, left: 10, top: 10),
                        labelText: 'Pin',
                        errorText: Pin.pin.error,
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
                  ),
                ],
              ),
            ),

            //

            SizedBox(
              height: 40,
            ),
            Consumer<ValidateField>(
              builder: (context, button, child) => InkWell(
                onTap: (!button.isRegformvalid)
                    ? null
                    : () {
                        var email = button.email.value;
                        var mobile = button.mobileNumber.value;
                        var middle = button.middlename.value;
                        var firstname = button.firstname.value;
                        var lastname = button.lastname.value;
                        var password = button.password.value;
                        var pin = button.pin.value;

                        _submitform(
                            email: email,
                            mobile: mobile,
                            middle: middle,
                            firstname: firstname,
                            lastname: lastname,
                            password: password,
                            pin: pin);
                      },
                child: Container(
                  height: 53.0,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  constraints: BoxConstraints(maxWidth: 345),
                  decoration: BoxDecoration(
                      color: !button.isRegformvalid
                          ? Colors.grey[400]
                          : kDeffaultColor,
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
