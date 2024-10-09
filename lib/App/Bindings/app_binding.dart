import 'package:get/get.dart';

import '../Controllers/bottomnave_controller.dart';
import '../Controllers/createnewpassword_controller.dart';
import '../Controllers/home_controller.dart';
import '../Controllers/login_Controller.dart';
import '../Controllers/more_details_page_controller.dart';
import '../Controllers/notification_controller.dart';
import '../Controllers/otp_controller.dart';
import '../Controllers/product_detail_controller.dart';
import '../Controllers/profile_controller.dart';
import '../Controllers/put_information_controler.dart';
import '../Controllers/quets_management_controller.dart';
import '../Controllers/service_provider_controller.dart';
import '../Controllers/service_provider_details_controller.dart';
import '../Controllers/sigup_controller.dart';
import '../Controllers/terms_and_polices_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(),);
    Get.lazyPut(() => LogInController(),);
    Get.lazyPut(() => SignUpController(),);
    Get.lazyPut(() => OTPController(),);
    Get.lazyPut(() => CreateNewPasswordController(),);
    Get.lazyPut(() => TermsPolicesController(),);
    Get.lazyPut(() => BottomNavController(),);
    Get.lazyPut(() => ProductDetailsController(),);
    Get.lazyPut(() => ServiceProviderController(),);
    Get.lazyPut(() => QuetsManagementController(),);
    Get.lazyPut(() => NotificationController(),);
    Get.lazyPut(() => MoredetailsPageController(),);
    Get.lazyPut(() => PutInformationController(),);
    Get.lazyPut(() => ServiceProviderDetailsController(),);
    Get.lazyPut(() => ProfileController(),);
  }

}