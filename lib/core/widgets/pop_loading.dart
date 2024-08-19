import 'package:commuter_driver/core/widgets/circle_loading.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class PopLoading {
  PopLoading._();
  static init() => EasyLoading.init();
  static show() {
    EasyLoading.show(
      maskType: EasyLoadingMaskType.black,
      dismissOnTap: false,
      indicator: const CircleLoading(),
    );
  }

  static showProgress(double value) {
    EasyLoading.showProgress(value);
  }

  static dismiss() => EasyLoading.dismiss();
}
