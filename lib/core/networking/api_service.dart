import 'package:commuter_driver/core/networking/api_consts.dart';
import 'package:commuter_driver/modules/auth/change_password/data/models/change_pass_request_model.dart';
import 'package:commuter_driver/modules/auth/change_password/data/models/change_pass_response_model.dart';
import 'package:commuter_driver/modules/auth/otp_forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:commuter_driver/modules/auth/otp_forgot_password/data/models/verify_reset_code_response_model.dart';
import 'package:commuter_driver/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_driver/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:commuter_driver/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_driver/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:commuter_driver/modules/commutes/data/models/get_commutes_response_model.dart';
import 'package:commuter_driver/modules/one_nearby_ride/data/models/complete_ride_request_model.dart';
import 'package:commuter_driver/modules/update_commute/data/models/update_commute_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../modules/add_commute/data/models/add_commute_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../modules/auth/otp_forgot_password/data/models/forgot_pass_response_model.dart';
import '../../modules/nearby_rides/data/models/accept_ride_request_model.dart';
import '../../modules/nearby_rides/data/models/nearby_rides_response_model.dart';
import '../../modules/nearby_rides/data/models/update_location_request_model.dart';
import '../../modules/profile/data/models/get_me_response_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
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
  @GET(ApiConsts.getMe)
  Future<GetMeResponseModel> getMe(
    @Header('Authorization') String token,
    @Path() String id,
  );
  @DELETE(ApiConsts.deleteMe)
  Future<void> deleteMe(
    @Header('Authorization') String token,
    @Path() String id,
  );

  @PUT(ApiConsts.updateMe)
  @MultiPart()
  Future<void> updateMe(
    @Header('Authorization') String token,
    @Path("id") String id,
    @Part(name: "files") List<MultipartFile> files,
    @Field("name") String name,
    @Field("email") String email,
    @Field("phone") String phone,
  );

  @POST(ApiConsts.addCommute)
  Future<void> addCommute(
    @Header('Authorization') String token,
    @Path() String id,
    @Body() AddCommuteRequestModel addCommuteRequestModel,
  );
  @GET(ApiConsts.getCommutes)
  Future<GetCommutesResponseModel> getCommutes(
    @Header('Authorization') String token,
    @Path() String id,
  );

  @DELETE(ApiConsts.deleteCommute)
  Future<void> deleteCommute(
    @Header('Authorization') String token,
    @Path() String id,
    @Path() String commuteId,
  );
  @PUT(ApiConsts.updateCommute)
  Future<void> updateCommute(
    @Header('Authorization') String token,
    @Path() String id,
    @Path() String commuteId,
    @Body() UpdateCommuteRequestModel updateCommuteRequestModel,
  );

  @GET(ApiConsts.getNearbyRides)
  Future<List<NearbyRidesModel>> getNearbyRequests(
    @Header('Authorization') String token,
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
}
