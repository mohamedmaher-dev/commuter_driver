class ApiConsts {
  ApiConsts._();
  static const String baseUrl = 'https://commuter.onrender.com/api/v1/';
  static const String signIn = 'auth/user/login';
  static const String forgotPassword = 'auth/user/forgotPassword';
  static const String verifyResetCode = 'auth/user/verifyResetCode';
  static const String changePassword = 'auth/user/resetPassword';
  static const String signUp = 'auth/user/signup';
  static const String rideRequest = 'rideRequests/booking';
  static const String addCommute = 'user/addCommute/{id}';
  static const String getMe = 'user/{id}';
  static const String deleteMe = 'user/{id}';
  static const String updateMe = 'user/{id}';
  static const String chatBaseUrl =
      'https://commuter-server-socket-io.onrender.com/';
  static const String rooms = 'rooms/{id}';
}
