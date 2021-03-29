import 'package:accounting/deffault.dart';
import 'package:accounting/routes/homepage/homescreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:accounting/exported_files.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

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
                                print('to register page');
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

class FormCLass extends StatelessWidget {
  const FormCLass({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      constraints: BoxConstraints(maxWidth: 600),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 25),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Log In',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 31),
                )),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 180,
            child: Column(
              children: [
                TextFormField(
                  ///validation code is at the top and comes first
                  onChanged: (value) {},
                  keyboardType: TextInputType.emailAddress,

                  /// decoration follows below
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 5, top: 10),
                      prefixIcon: Icon(
                        Icons.mail,
                        size: 20,
                      ),
                      labelText: 'Email',
                      // errorText: 'kh',
                      errorStyle: TextStyle(
                        fontSize: 13,
                      )),
                  autofocus: true,
                  style: TextStyle(
                    letterSpacing: 2,
                  ),
                  enableSuggestions: false,
                ),
                SizedBox(
                  height: kDeffaultpadding,
                ),
                TextFormField(
                  onChanged: (password) {
                    // validatePassword.setPasswor(password);
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 5, top: 10),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 20,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                      labelText: 'Password',

                      // errorText: validatePassword.password.error,
                      errorStyle: TextStyle(
                        fontSize: 16,
                      )),
                  style: TextStyle(
                    letterSpacing: 2,
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
            },
            child: Container(
              height: 53.0,
              width: size.width,
              constraints: BoxConstraints(maxWidth: 345),
              decoration: BoxDecoration(
                  color: kDeffaultColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'LogIn',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40.0),
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
