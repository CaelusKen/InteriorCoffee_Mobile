import 'package:get/get.dart';
import 'package:interior_coffee/common/manager/network_manager.dart';

class GeneralBidings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
