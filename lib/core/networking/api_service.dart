import 'package:commuter_driver/core/networking/api_consts.dart';
import 'package:commuter_driver/modules/auth/change_password/data/models/change_pass_request_model.dart';
import 'package:commuter_driver/modules/auth/change_password/data/models/change_pass_response_model.dart';
import 'package:commuter_driver/modules/auth/otp_forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:commuter_driver/modules/auth/otp_forgot_password/data/models/verify_reset_code_response_model.dart';
import 'package:commuter_driver/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_driver/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:commuter_driver/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_driver/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:commuter_driver/trash/one_nearby_ride/data/models/complete_ride_request_model.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/models/get_requests_response_model.dart';
import 'package:commuter_driver/core/models/get_user_data_resposne_model.dart';
import 'package:commuter_driver/modules/commutes/update_commute/data/models/update_commute_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../modules/commutes/add_commute/data/models/add_commute_request_model.dart';
import '../../modules/commutes/one_commute/data/models/aproved_join_response_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_response_model.dart';
import '../../modules/commutes/my_commutes/data/models/get_commutes_response_model.dart';
import '../../modules/my_profile/data/models/get_me_response_model.dart';
import '../../trash/nearby_rides/data/models/accept_ride_request_model.dart';
import '../../trash/nearby_rides/data/models/nearby_rides_response_model.dart';
import '../../trash/nearby_rides/data/models/update_location_request_model.dart';
import '../../modules/commutes/one_commute/data/models/set_commute_online_request_model.dart';
part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {required String baseUrl}) = _ApiService;
  @POST(ApiConsts.signIn)
  Future<SignInResponseModel> signIn(
    @Body() SignInRequestModel signInRequestModel,
  );
  @POST(ApiConsts.signUp)
  Future<SignUpResponseModel> signUp(
    @Body() SignUpRequestModel signUpRequestModel,
  );

  @POST(ApiConsts.forgotPassword)
  Future<ForgotPassResponseModel> sendResetCode(
    @Body() ForgotPassRequestModel forgotPassRequestModel,
  );
  @POST(ApiConsts.verifyResetCode)
  Future<VerifyResetCodeResponseModel> verifyResetCode(
    @Body() VerifyResetCodeRequestModel verifyResetCodeRequestModel,
  );
  @PUT(ApiConsts.changePassword)
  Future<ChangePassResponseModel> changePassword(
    @Body() ChangePassRequestModel changePassRequestModel,
  );
  @GET(ApiConsts.getCommutes)
  Future<GetCommutesResponseModel> getCommutes(
    @Path() String id,
  );

  @DELETE(ApiConsts.deleteCommute)
  Future<void> deleteCommute(
    @Path() String id,
    @Path() String commuteId,
  );
  @PUT(ApiConsts.updateCommute)
  Future<void> updateCommute(
    @Path() String id,
    @Path() String commuteId,
    @Body() UpdateCommuteRequestModel updateCommuteRequestModel,
  );

  @GET(ApiConsts.getNearbyRides)
  Future<List<NearbyRidesModel>> getNearbyRequests(
    @Path() String driverId,
  );

  @POST(ApiConsts.updateLoaction)
  Future<void> updateLoacation(
    @Body() UpdateLocationRequestModel updateLocationRequestModel,
  );

  @POST(ApiConsts.acceptRide)
  Future<void> acceptRide(
    @Body() AcceptRideRequestModel acceptRideRequestModel,
  );
  @POST(ApiConsts.startRide)
  Future<void> startRide(
    @Path() String rideId,
  );
  @POST(ApiConsts.completeRide)
  Future<void> completeRide(
    @Body() CompleteRideRequestModel completeRideRequestModel,
  );

  @GET(ApiConsts.getRequests)
  Future<GetRequestsResponseModel> getRequests(
    @Path() String id,
  );

  @PATCH(ApiConsts.acceptRequest)
  Future<void> acceptRequest(
    @Path() String requestId,
  );
  @PATCH(ApiConsts.rejectRequest)
  Future<void> rejectRequest(
    @Path() String requestId,
  );

  @GET(ApiConsts.getUser)
  Future<GetUserDataResponseModel> getUser(
    @Path() String id,
  );

  @GET(ApiConsts.aprovedJoin)
  Future<GetAprovedJoinResponseModel> getAprovedJoin(
    @Path() String id,
  );

  @POST(ApiConsts.setCommuteOnline)
  Future<void> setCommuteOnline(
    @Path() String driverId,
    @Path() String commuteId,
    @Body() SetCommuteOnlineRequestModel setCommuteOnlineRequestModel,
  );
  @POST(ApiConsts.addCommute)
  Future<void> addCommute(
    @Path() String id,
    @Body() AddCommuteRequestModel addCommuteRequestModel,
  );
  @GET(ApiConsts.getDriver)
  Future<GetMeResponseModel> getMe(
    @Path() String id,
  );
  @DELETE(ApiConsts.getDriver)
  Future<void> deleteMe(
    @Path() String id,
  );

  @PUT(ApiConsts.getDriver)
  @MultiPart()
  Future<void> updateMe(
    @Path() String id,
    @Part(name: "image") List<MultipartFile> files,
    @Part(name: "name") String name,
    @Part(name: "email") String email,
    @Part(name: "phone") String? phone,
  );
  @GET(ApiConsts.getDriver)
  Future<GetMeResponseModel> geDriver(
    @Path() String id,
  );
}
