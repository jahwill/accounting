import 'dart:ffi';

import 'package:accounting/domain/validatefield/validate_field_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValidateField with ChangeNotifier {
  ValidateItem _email = ValidateItem(null, null);
  ValidateItem _password = ValidateItem(null, null);
  ValidateItem _pin = ValidateItem(null, null);
  ValidateItem _mobileNumber = ValidateItem(null, null);
  ValidateItem _middleName = ValidateItem(null, null);
  ValidateItem _firstName = ValidateItem(null, null);
  ValidateItem _lastName = ValidateItem(null, null);

  //getter

  bool get isRegformvalid {
    ///this isvalid is for a SignUp or Registration  form
    if (_email.value != null &&
        _password.value != null &&
        _mobileNumber.value != null &&
        _firstName.value != null &&
        _lastName.value != null &&
        _middleName.error == null &&
        _pin.value != null) {
      return true;
    } else {
      return false;
    }
  }

  ValidateItem get email => _email;

  ValidateItem get password => _password;
  ValidateItem get pin => _pin;
  ValidateItem get mobileNumber => _mobileNumber;
  ValidateItem get middlename => _middleName;
  ValidateItem get firstname => _firstName;
  ValidateItem get lastname => _lastName;

  //
  //setter
  Void validateEmail(String value) {
    RegExp emailRegex = RegExp(
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""");
    if (emailRegex.hasMatch(value)) {
      _email = ValidateItem(value, null);
    } else {
      _email = ValidateItem(null, 'not a valid email');
    }
    notifyListeners();
  }

  Void validatPassword(String value) {
    if (value.length > 6) {
      _password = ValidateItem(value, null);
    } else {
      _password = ValidateItem(null, 'password too short');
    }
    notifyListeners();
  }

  Void validatPin(String value) {
    if (value.length > 4) {
      _pin = ValidateItem(value, null);
    } else {
      _pin = ValidateItem(null, 'pin too short');
    }
    notifyListeners();
  }

  //
  ///the below method is use to validate phone number
  void validatMobileNumber(String value) {
    RegExp mobileNumRegExp =
        RegExp(r"""\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42
 \d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|
    4[987654310]|3[9643210]|2[70]|7|1)\d{1,14}$""");

    if (mobileNumRegExp.hasMatch(value)) {
      if (value.substring(0, 4) == '+234') {
        if (value.substring(4, 5) == '0') {
          ///this function is use to remove the number 0[zero]if added to
          ///phone number field by user
          var mobileN = value.substring(5);
          _mobileNumber = ValidateItem('+234' + mobileN, null);
          print(_mobileNumber.value);
        } else
          _mobileNumber = ValidateItem(value, null);
        //just send if not having '0'
      }
      //
      else {
        ///this happens if it is not a Nigeria Number it should not border to
        /// check just send the number base on the valid result from the
        /// Regular expression[RegExp]
        _mobileNumber = ValidateItem(value, null);
      }
    } else {
      ///this return false if it does not match the RegExp check
      _mobileNumber = ValidateItem(null, 'not a valid number');
    }
    notifyListeners();
  }

  //
  //
  void validatemiddleName(String name) {
    RegExp num = RegExp(r'[0-9]');
    if (!num.hasMatch(name)) {
      _middleName = ValidateItem(name, null);
    } else
      _middleName =
          ValidateItem(null, 'not a valid name must not contain number');
    notifyListeners();
  }

  //

  //
  void validatefirstName(String name) {
    RegExp num = RegExp(r'[0-9]');
    if (name.isNotEmpty && !num.hasMatch(name)) {
      print('ok');
      _firstName = ValidateItem(name, null);
    } else
      _firstName = ValidateItem(
          null,
          'not a valid name must not contain '
          'number');
    notifyListeners();
  } //

  //
  void validatelastName(String name) {
    RegExp num = RegExp(r'[0-9]');
    if (name.isNotEmpty && !num.hasMatch(name)) {
      print('ok');
      _lastName = ValidateItem(name, null);
    } else
      _lastName = ValidateItem(
          null,
          'not a valid name must not contain '
          'number');
    notifyListeners();
  }
}
