class EmailFieldValidator {
  static String? validate(String? value) {
    // Expressão regular para validar o formato de e-mail
    String pattern =
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um e-mail';
    } else if (!regExp.hasMatch(value)) {
      return 'Por favor, insira um e-mail válido';
    }
    return null;
  }
}

class PasswordFieldValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira uma senha';
    } else if (value.length < 6) {
      return 'A senha deve ter pelo menos 6 caracteres';
    }
    return null;
  }
  
}