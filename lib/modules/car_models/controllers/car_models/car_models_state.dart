part of 'car_models_cubit.dart';

@freezed
class CarModelsState with _$CarModelsState {
  const factory CarModelsState.loading() = _CarModelsLoading;
  factory CarModelsState.success(List<CarModelItem> data) = _CarModelsSuccess;
  const factory CarModelsState.failure() = _CarModelsFailure;
  const factory CarModelsState.empty() = _CarModelsEmpty;
}
