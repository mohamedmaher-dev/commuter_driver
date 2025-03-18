part of 'car_brands_cubit.dart';

@freezed
class CarBrandsState with _$CarBrandsState {
  const factory CarBrandsState.loading() = _CarMBrandsLoading;
  const factory CarBrandsState.success(List<MakesItem> data) =
      _CarBrandsSuccess;
  const factory CarBrandsState.failure() = _CarBrandsFailure;
  const factory CarBrandsState.empty() = _CarBrandsEmpty;
}
