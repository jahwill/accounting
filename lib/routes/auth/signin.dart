import 'dart:convert';
import 'dart:io';
import 'package:accounting/domain/appstate/current_userstate.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:accounting/exported_files.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

bool isloading = false;
userState _userstate = userState();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              FormCLass(size: size),
              Container(
                height: 60,
                width: size.width,
                // margin: EdgeInsets.symmetric(horizontal: 10),
                // constraints: BoxConstraints(maxWidth: 600),
                decoration: BoxDecoration(),
                child: Center(
                  child: RichText(
                      text: TextSpan(
                          text: 'Don\'t '
                              'have an account ?   ',
                          style: TextStyle(fontSize: 17),
                          children: [
                        TextSpan(
                            text: 'Sign up',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignUp()));
                              })
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FormCLass extends StatefulWidget {
  const FormCLass({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _FormCLassState createState() => _FormCLassState();
}

class _FormCLassState extends State<FormCLass> {
  bool _visible = false;
  var experimnt;
  LogInandRoutePage signuser = LogInandRoutePage();

  @override
  Widget build(BuildContext context) {
    void _submitform({
      String email,
      password,
    }) async {
      setState(() {
        isloading = true;
      });
      var response = await signuser.signinUser(email, password);
      setState(() {
        isloading = false;
      });
      //
      var data = json.decode(response.body); //converts the response to json

      if (response is SocketException) {
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
      } else if (response.statusCode == 200 || response.statusCode == 201) {
        _userstate.getUserState(response);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 15),
          content: Text(
            'Sign in Successful !',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ));
//
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => HomePage()));
        //
      } else if (response.statusCode >= 400) {
        ///this happens when the the failure response comes from the servere
        ///due to wrong details or other errors resulting from the user
        ///details submited

        var message = data["message"]; //get the message out of the json
        // converted into ''data'' field
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 5),
          content: Text(
            message,

            ///this diplays error resposnse from the server
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

    ///
    ///
    /// ............................................................................
    ///
    ///   our method for submiting our sign in form ends here
    ///   the UI screen code continues from below
    ///
    ///...............................................................................
    return Container(
      height: 530,
      width: widget.size.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      // padding: EdgeInsets.symmetric(
      //   horizontal: 15,
      // ),
      constraints: BoxConstraints(maxWidth: 600),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kDeffaultColor.withOpacity(0.7),
                // color: Colors.grey[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 25),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Log In',
                          style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.pink[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 31),
                        )),
                  ),
                ],
              )),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 180.0,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            // color: Colors.pink,
            child: Column(
              children: [
                Consumer<ValidateSignIn>(
                  builder: (context, mail, child) => TextFormField(
                    ///validation code is at the top and comes first
                    onChanged: (value) {
                      mail.validateEmail(value);
                    },
                    keyboardType: TextInputType.emailAddress,

                    /// decoration follows below
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 5, top: 10),
                        prefixIcon: Icon(
                          Icons.mail,
                          size: 20,
                        ),
                        labelText: 'Email',
                        errorText: mail.email.error,
                        errorStyle: TextStyle(
                          fontSize: 13,
                        )),
                    autofocus: true,
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    enableSuggestions: false,
                  ),
                ),
                SizedBox(
                  height: kDeffaultpadding,
                ),
                Consumer<ValidateSignIn>(
                  builder: (context, paswrd, child) => TextFormField(
                    onChanged: (password) {
                      paswrd.validatPassword(password);
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 5, top: 10),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 20,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _visible = _visible == true ? false : true;
                            });
                          },
                          child: _visible == true
                              ? Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.grey,
                                )
                              : Icon(
                                  Icons.visibility_outlined,
                                  color: Colors.grey,
                                ),
                        ),
                        labelText: 'Password',
                        errorText: paswrd.password.error,
                        errorStyle: TextStyle(
                          fontSize: 13,
                        )),
                    style: TextStyle(
                      letterSpacing: 2,
                    ),
                    obscureText: _visible,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          Consumer<ValidateSignIn>(
            builder: (context, login, child) => InkWell(
              onTap: (!login.isvalid)
                  ? null
                  : () async {
                      var mail = login.email.value;
                      var password = login.password.value;
                      _submitform(email: mail, password: password);

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) => HomePage()));
                    },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                height: 53.0,
                width: widget.size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                constraints: BoxConstraints(maxWidth: 345),
                decoration: BoxDecoration(
                    color: login.isvalid == true
                        ? kDeffaultColor
                        : Colors.grey[300],
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    isloading == true ? 'loading...' : 'LogIn',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: login.isvalid == true
                            ? Colors.black
                            : Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40.0),
            child: Row(
              children: [
                Text('Forgot password ?',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
