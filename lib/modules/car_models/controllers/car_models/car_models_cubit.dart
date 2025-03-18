import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/car_models/data/models/car_models_reponse_model.dart';
import 'package:commuter_driver/modules/car_models/data/rebos/api_car_model_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'car_models_state.dart';
part 'car_models_cubit.freezed.dart';

class CarModelsCubit extends Cubit<CarModelsState> {
  final ApiCarModelRebo apiCarModelRebo = ApiCarModelRebo();
  CarModelsCubit() : super(const CarModelsState.loading());
  Future<void> getModels(int makeId) async {
    final result = await apiCarModelRebo.getModels(makeId.toString());
    result.when(
      success: (data) {
        if (data.models.isEmpty) {
          emit(const CarModelsState.empty());
        } else {
          emit(CarModelsState.success(data.models));
        }
      },
      failure: (error) {
        print("error ============ : ${error.msg}");

        emit(const CarModelsState.failure());
      },
    );
  }
}
