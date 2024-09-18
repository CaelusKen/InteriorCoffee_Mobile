import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update trang hien tai khi scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //chon page de navigate
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update trang hien tai va scroll den trang tiep
  void nextPage(){
    if(currentPageIndex.value == 2){
      //Get to login screen
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update trang hien tai va scroll den trang cuoi
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}