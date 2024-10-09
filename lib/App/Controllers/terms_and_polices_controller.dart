import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/Constants/app_strings.dart';
import '../Widgets/dialog/CustomDialog.dart';

class TermsPolicesController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void showTermsDialog() {
    Get.dialog(CustomDialog(title: AppStrings.policesdialgueTitle,bodyText: AppStrings.policesdialgueBody,));
  }
}


