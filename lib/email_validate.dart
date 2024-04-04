import 'package:email_validator/email_validator.dart';

//Email validator, making sure the email is in the correct format.
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  } else if (!EmailValidator.validate(value)) {
    return 'Please enter a valid email address';
  } else if (!value.contains('@gmail.com')) {
    return 'Please enter a Gmail email address';
  }
  return null;
}