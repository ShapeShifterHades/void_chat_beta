import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError validator(String value) {
    // return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;

    if (!_emailRegExp.hasMatch(value)) return EmailValidationError.invalid;
    return null;
  }

  static String getErrorMessage(error) {
    switch (error) {
      case EmailValidationError.invalid:
        return 'This is not a valid email';
      default:
        return null;
    }
  }
}
