import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/manufacturer_response_model.dart';
import '../../data/rebos/api_car_model_rebo.dart';

part 'car_brands_state.dart';
part 'car_brands_cubit.freezed.dart';

class CarBrandsCubit extends Cubit<CarBrandsState> {
  final ApiCarModelRebo apiCarModelRebo = ApiCarModelRebo();

  CarBrandsCubit() : super(const CarBrandsState.loading());

  Future<void> getMakes() async {
    final result = await apiCarModelRebo.getMakes();
    result.when(
      success: (data) {
        if (data.makes.isEmpty) {
          emit(const CarBrandsState.empty());
        } else {
          emit(CarBrandsState.success(data.makes));
        }
      },
      failure: (error) {
        emit(const CarBrandsState.failure());
      },
    );
  }
}
