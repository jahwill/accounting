import 'dart:convert';

import 'package:flutter/widgets.dart';

var useR;

class userData {
  final String token;
  userDetail userdetails;

  userData({this.token, this.userdetails});

  userData.fromJson(Map<String, dynamic> jsondata)
      : token = jsondata['token'],
        userdetails = jsondata['data'] != null
            ? userDetail.fromJson(jsondata['data'])
            : null;
}

class userDetail {
  final userMail;
  final mobileNumber;
  final middleName;
  final firstName;
  final lastName;
  final accountNumber;
  final userID;

  userDetail(

      ///this is the constructor for the class
      {this.userMail,
      this.mobileNumber,
      this.firstName,
      this.lastName,
      this.middleName,
      this.accountNumber,
      this.userID});

  userDetail.fromJson(Map<String, dynamic> data)
      : userMail = data["email"],
        mobileNumber = data["tel"],
        firstName = data["firstName"],
        lastName = data["lastName"],
        middleName = data["middleName"] == null ? '' : data["middleName"],
        accountNumber = data["accountNumber"],
        userID = data["uid"];

  ///this make a model for parsing in user details json to dart object [PODO]
  ///
  ///

}

class UserStateModel {
  final message;
  userData data;

  UserStateModel({this.message, this.data});
  UserStateModel.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        data = userData.fromJson(json['data']);

  ///this class that accept the response.body in json form

}

class infomodel {
  final mail;
  final message;

  infomodel(this.mail, this.message);
}

class userState extends ChangeNotifier {
  infomodel _message = infomodel('kj', 'jh');

  getUserState(response) {
    //

    var decoded = json.decode(response.body);
    var useR = UserStateModel.fromJson(decoded);

    _message = infomodel(useR.message, useR.message);
    // notifyListeners();

    return useR;
  }

  infomodel get firstname => _message;
  // get userStatus => _userState;
}
