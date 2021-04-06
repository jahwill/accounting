import 'dart:io';

import 'package:http/http.dart' as http;

var url = Uri.parse('https://dev.otp.foodmoni.com/send/validate');

Future<dynamic> verifyMailOTP({String email, otp}) async {
  var payload = {"otp": otp, "email": email};

  try {
    var response = await http.post(url, body: payload);
    return response;
  } on SocketException catch (err) {
    print('the following error has occure: $err');
    return err;
  } finally {
    print(' has run to completion !');
  }
}
