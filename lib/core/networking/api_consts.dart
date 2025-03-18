class ApiConsts {
  ApiConsts._();
  // Auth Endpoints
  static const signIn = 'auth/driver/login';
  static const forgotPassword = 'auth/driver/forgotPassword';
  static const verifyResetCode = 'auth/driver/verifyResetCode';
  static const changePassword = 'auth/driver/resetPassword';
  static const signUp = 'auth/driver/signup';
  static const signWithGoogle = '/api/protected/auth/google/user';
  // Driver Endpoints
  static const getDriver = 'drivers/{id}';
  static const getUser = 'users/{id}';
  static const deleteMe = 'drivers/{id}';
  static const updateMe = 'drivers/{id}';
  // Commute Endpoints
  static const getCommutes = 'drivers/{id}';
  static const deleteCommute = 'drivers/deleteCommute/{id}/{commuteId}';
  static const updateCommute = 'drivers/updateCommute/{id}/{commuteId}';
  static const addCommute = 'drivers/addCommute/{id}';
  static const setCommuteOnline = 'drivers/startCommute/{driverId}/{commuteId}';
  // Nearby Rides Endpoints
  static const updateLoaction = 'rideRequests/update/location';
  static const getNearbyRides = 'driver/rideRequests/nearby/rides/{driverId}';
  static const acceptRide = 'rideRequests/accept/ride';
  static const startRide = 'rideRequests/rides/{rideId}/start';
  static const completeRide = 'rideRequests/complete/ride';
  // Chat Endpoints
  static const rooms = 'msg/rooms/{id}/driver';
  // Request Endpoints
  static const getRequests = 'drivers/getAllCommuteRequestsForDriver/{id}';
  static const acceptRequest = 'drivers/acceptCommuteRequest/{requestId}';
  static const rejectRequest = 'drivers/rejectCommuteRequest/{requestId}';
  static const aprovedJoin = 'drivers/getAcceptedCommuteRequestsForDriver/{id}';
  // Notification Endpoints
  static const getUnreadNotifisEndPoint = 'notifications/not-read/{id}';
  static const getReadNotifisEndPoint = 'notifications/read/{id}';
  static const readNotifisEndPoint = 'notifications/{notifiId}/read';
  static const delNotifiEndPoint = 'notifications/del/{userId}/{notifiId}';
  static const sendFcmToken = 'register/fcm/driver/{id}';
}
