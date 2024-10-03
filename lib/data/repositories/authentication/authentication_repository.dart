import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:interior_coffee/features/authentication/screens/login/login.dart';
import 'package:interior_coffee/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController
{
  static AuthenticationRepository get instance => Get.find();

  //variables
  final deviceStorage = GetStorage();

  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect;
  }

  screenRedirect() async {
    
    if(kDebugMode){
      print('================Get Storage================');
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => LoginScreen()) : Get.offAll(OnBoardingScreen());
  }
}
