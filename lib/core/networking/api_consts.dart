class ApiConsts {
  ApiConsts._();
  static const String baseUrl = 'https://commuter.onrender.com/api/v1/';
  static const String signIn = 'auth/driver/login';
  static const String forgotPassword = 'auth/driver/forgotPassword';
  static const String verifyResetCode = 'auth/driver/verifyResetCode';
  static const String changePassword = 'auth/driver/resetPassword';
  static const String signUp = 'auth/driver/signup';
  static const String getMe = 'drivers/{id}';
  static const String deleteMe = 'drivers/{id}';
  static const String updateMe = 'drivers/{id}';
  static const String getCommutes = 'drivers/{id}';
  static const String deleteCommute = 'drivers/deleteCommute/{id}/{commuteId}';
  static const String updateCommute = 'drivers/updateCommute/{id}/{commuteId}';
  static const String addCommute = 'drivers/addCommute/{id}';
}
