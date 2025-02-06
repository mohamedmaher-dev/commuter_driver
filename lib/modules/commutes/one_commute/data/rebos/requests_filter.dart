import '../models/get_requests_response_model.dart';

abstract class AbstractRequestsFilter {
  List<RequestsResponseModelItem> filter(
    List<RequestsResponseModelItem> requests,
  );
}

class OnlineRequestsFilter implements AbstractRequestsFilter {
  @override
  List<RequestsResponseModelItem> filter(
    List<RequestsResponseModelItem> requests,
  ) {
    return requests
        .where((request) => request.type == RequestType.online)
        .toList();
  }
}

class UpcomingRequestsFilter implements AbstractRequestsFilter {
  @override
  List<RequestsResponseModelItem> filter(
    List<RequestsResponseModelItem> requests,
  ) {
    return requests
        .where((request) => request.type == RequestType.upcoming)
        .toList();
  }
}

class OfflineRequestsFilter implements AbstractRequestsFilter {
  @override
  List<RequestsResponseModelItem> filter(
    List<RequestsResponseModelItem> requests,
  ) {
    return requests
        .where((request) => request.type == RequestType.offline)
        .toList();
  }
}

class AllRequestsFilter implements AbstractRequestsFilter {
  @override
  List<RequestsResponseModelItem> filter(
    List<RequestsResponseModelItem> requests,
  ) {
    return requests;
  }
}
