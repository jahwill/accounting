import 'dart:ffi';

import 'package:accounting/domain/validatefield/validate_field_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValidateSignIn with ChangeNotifier {
  ValidateItem _email = ValidateItem(null, null);
  ValidateItem _password = ValidateItem(null, null);

  //getter
  bool get isvalid {
    ///this isvalid is for a login form
    if (_email.value != null && _password.value != null) {
      return true;
    } else {
      return false;
    }
  }

  ValidateItem get email => _email;

  ValidateItem get password => _password;

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
}
