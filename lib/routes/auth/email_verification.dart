import 'package:accounting/deffault.dart';
import 'package:accounting/domain/auth/verifymail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOTP extends StatelessWidget {
  final String email;

  const VerifyOTP({Key key, this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/login.png',
                colorBlendMode: BlendMode.dstATop,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: kDeffaultpadding / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Verify Mail',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kDeffaultColor),
                ),
              ),
            ),
            SizedBox(
              height: kDeffaultpadding,
            ),
            RichText(
              text: TextSpan(
                  text: 'Hello!  ',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'Jahswill',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontFamily: 'greycliff'),
                    )
                  ]),
            ),
            SizedBox(
              height: kDeffaultpadding / 3,
            ),
            Container(
              width: 320,
              // padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'A One Time Password(OTP) code has been sent to your '
                'mail-box please enter code here to verify its you',
                // overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            SizedBox(
              height: kDeffaultpadding * 1.5,
            ),
            Container(
              // color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20),
              constraints: BoxConstraints(maxWidth: 500.0),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                onChanged: (value) {
                  if (value.length == 6) {
                    print(value);
                    verifyMailOTP(email: email, otp: value);
                  }
                },
                textStyle: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  activeColor: kDeffaultColor,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  inactiveColor: Colors.grey[100],
                  fieldHeight: 35.0,
                ),
              ),
            ),
            SizedBox(
              height: kDeffaultpadding * 1.5,
            ),
            Container(
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kDeffaultColor),
              child: Center(
                child: Text(
                  'Verify',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SizedBox(
              height: kDeffaultpadding * 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'did\'nt receive OTP ?  ',
                          style: Theme.of(context).textTheme.subtitle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                          children: [
                        TextSpan(
                            text: 'Re-Send',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    duration: Duration(seconds: 10),
                                    content: Text(
                                      'an otp has been sent to your mail',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                );
                              })
                      ]))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

//I/flutter (15604): Tried calling: []("token")
// I/flutter (15604): {email: esquireoghenemine@gmail.com, tel: +2348124155959, firstName: Mine, lastName: Esquire, pwd: 12b03226a6d8be9c6e8cd5e55dc6c7920caaa39df14aab92d5e3ea9340d1c8a4d3d0b8e4314f1f6ef131ba4bf1ceb9186ab87c801af0d5c95b1befb8cedae2b9, pin: d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db}
// I/flutter (15604): {"code":200,"status":true,"message":"success","data":{"token":"JWT eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlclwiOntcInVpZFwiOlwiNGI1YTQyMDItNjJlOS00N2NlLTg4MTEtYzI0OWEwODUwY2Y1XCIsXCJlbWFpbFwiOlwiZXNxdWlyZW9naGVuZW1pbmVAZ21haWwuY29tXCIsXCJ0ZWxcIjpcIjIzNDgxMjQxNTU5NTlcIixcImFjY291bnROdW1iZXJcIjpcIjM1MjI1NzM4NzBcIixcImZpcnN0TmFtZVwiOlwiTWluZVwiLFwibGFzdE5hbWVcIjpcIkVzcXVpcmVcIixcImlzRW1haWxWZXJpZmllZFwiOmZhbHNlLFwiaXNUZWxWZXJpZmllZFwiOmZhbHNlLFwiaXNFbmFibGVkXCI6dHJ1ZSxcImlzVXNlclwiOnRydWV9fSIsImlhdCI6MTYxNzIxMjU3MywiZXhwIjoxNjE5ODA0NTczfQ.4U9Hh-Iiku0eHAS5Qm17ovyA2rt4Bb-SDlDQe3CgJpqd-6J4eNYvwcogLNJj9_fxbV3knK3vysN-0vZEumY96Q","data":{"uid":"4b5a4202-62e9-47ce-8811-c249a0850cf5","email":"esquireoghenemine@gmail.com","tel":"2348124155959","accountNumber":"3522573870","firstName":"Mine","lastName":"Esquire","isEmailVerified":false,"isTelVerified":false,"isEnabled":true,"isUser":true}}} {x-cloud-trace-context: 15f04fdd8568842c496d5bd1662e4d45;o=1, x-powered-by: Express, date: Wed, 31 Mar 2021 17:42:
// I/flutter (15604): https://dev.otp.foodmoni.com/send
// I/flutter (15604): esquireoghenemine@gmail.com
// I/flutter (15604): 575258
// I/flutter (15604): here
// I/flutter (15604): https://dev.auth.foodmoni.com/verify/email
// I/flutter (15604): here
// I/flutter (15604): {Content-Type: application/json, authorization: JWT eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlclwiOntcInVpZFwiOlwiNGI1YTQyMDItNjJlOS00N2NlLTg4MTEtYzI0OWEwODUwY2Y1XCIsXCJlbWFpbFwiOlwiZXNxdWlyZW9naGVuZW1pbmVAZ21haWwuY29tXCIsXCJ0ZWxcIjpcIjIzNDgxMjQxNTU5NTlcIixcImFjY291bnROdW1iZXJcIjpcIjM1MjI1NzM4NzBcIixcImZpcnN0TmFtZVwiOlwiTWluZVwiLFwibGFzdE5hbWVcIjpcIkVzcXVpcmVcIixcImlzRW1haWxWZXJpZmllZFwiOmZhbHNlLFwiaXNUZWxWZXJpZmllZFwiOmZhbHNlLFwiaXNFbmFibGVkXCI6dHJ1ZSxcImlzVXNlclwiOnRydWV9fSIsImlhdCI6MTYxNzIxMjU3MywiZXhwIjoxNjE5ODA0NTczfQ.4U9Hh-Iiku0eHAS5Qm17ovyA2rt4Bb-SDlDQe3CgJpqd-6J4eNYvwcogLNJj9_fxbV3knK3vysN-0vZEumY96Q}
// I/flutter (15604): {"otp":"575258"}
// I/flutter (15604): {"code":200,"status":true,"message":"success","data":true}
