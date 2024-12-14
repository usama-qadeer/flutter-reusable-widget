// ignore_for_file: unnecessary_null_comparison, unnecessary_this

extension StringCapitalize on String {
  String capitalize() {
    if (this == null || this.isEmpty) return this;
    return this[0].toUpperCase() + this.substring(1);
  }

  bool get isValidEmail {
    final emailRegExp =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
    return emailRegExp.hasMatch(this);
  }
}
