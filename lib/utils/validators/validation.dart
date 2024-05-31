class TValidator {
  // EMPTY TEXT VALIDATION
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required.";
    }
    //REGULAR EXPRESSION FOR EMAIL VALIDATION
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'invalid email addresss.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'password is required';
    }
    //CHECK FOR MINIMUM PASSWORD
    if (value.length < 6) {
      return 'Password must be atleast 6 characters long';
    }
    //CHECK FOR UPPERCASE LETTERS
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain atleast one uppercase letter';
    }
    //CHECK FOR NUMBERS
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain atleast one number';
    }
    //CHECK FOR SPECIAL CHARACTERS
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain atleast one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'PhoneNumber is required';
    }
    //REGULAR EXPRESSION FOR PHONE NUMBER VALIDATION(ASSUMING A 10- DIGIT US PHONE NUMBER)
    final phoneRegExp = RegExp(r'^\d{11}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'invalid phone number format (10 digits required).';
    }
    return null;
  }
}
