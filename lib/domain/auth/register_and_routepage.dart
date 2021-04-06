import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

var url = Uri.parse('https://dev.auth.foodmoni.com/create');
var url2 = Uri.parse('https://dev.otp.foodmoni.com/send');
Future<dynamic> postForm(
    {String email, tel, middleName, firstName, lastName, pwd, pin}) async {
  var payload = {
    'email': email,
    'tel': tel,
    'middleName': middleName == null ? '' : middleName, // Optional
    'firstName': firstName,
    'lastName': lastName,
    'pwd': pwd,
    'pin': pin
  };
  try {
    var response = await http.post(url, body: payload);

    if (response.statusCode == 200 || response.statusCode == 201) {
      ///this part request for the otp ones the user registration is complete
      var data = json.decode(response.body);
      var decodedmail = data["email"];
      var rs = await http.post(url2, body: {'username': decodedmail});
      print(rs.body);
    }
    return response;

    //
  } on SocketException catch (err) {
    print('the following error happened $err');
    return err;
  } on HttpException catch (error) {
    return error;
  } finally {
    print('all done !');
  }
}
