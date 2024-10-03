import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interior_coffee/common/widgets/loaders/animation_loader.dart';
import 'package:interior_coffee/utils/constants/colors.dart';
import 'package:interior_coffee/utils/helpers/function_helper.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation){
    showDialog(context: Get.overlayContext!, barrierDismissible: false,
    builder: (_) => PopScope(canPop: false,
      child: Container(
        color: THelperFunction.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 250),
            TAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        )
      )
    );
  }

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}