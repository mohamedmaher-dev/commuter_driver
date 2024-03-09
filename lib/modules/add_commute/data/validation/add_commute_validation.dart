import '../../controllers/add_commute_bloc/add_commute_bloc.dart';
import '../../controllers/landing/add_commute_landing_bloc.dart';
import '../../controllers/pickup/add_commute_pickup_bloc.dart';

bool addBlocIsValid({
  required AddCommuteBloc bloc,
}) {
  if (bloc.commuteName.text.trim().isEmpty) {
    return false;
  } else {
    return true;
  }
}

bool pickupIsValid({
  required AddCommutePickupBloc bloc,
}) {
  if (bloc.endTime == null || bloc.startTime == null || bloc.latLng == null) {
    return false;
  } else {
    return true;
  }
}

bool landingIsValid({
  required AddCommuteLandingBloc bloc,
}) {
  if (bloc.endTime == null || bloc.startTime == null || bloc.latLng == null) {
    return false;
  } else {
    return true;
  }
}
