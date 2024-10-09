import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:thiqah_services_provider/App/Controllers/login_Controller.dart';
import 'package:thiqah_services_provider/App/Views/Pages/Authentication/login_page.dart';
import '../Views/Pages/Add_Product/product_detail_page.dart';
import '../Views/Pages/Authentication/createServiceAccount.dart';
import '../Views/Pages/Authentication/otp_page.dart';
import '../Views/Pages/Authentication/singup_page.dart';
import '../Views/Pages/Authentication/terms_and_polices.dart';
import '../Views/Pages/Notification/notification_page.dart';
import '../Views/Pages/Authentication/loading_page.dart';
import '../Views/Pages/Profile/profile_page.dart';
import '../Views/Pages/home/home_bottomnav.dart';
import '../Views/Pages/home/home_page.dart';

class AppRoutes {
  static const String loading = '/';
  static const String homePage = '/homePage';
  static const String signUp = '/signUp';
  static const String logIn = '/logIn';
  static const String newPassword = '/newPassword';
  static const String otpScreen = '/otpPage';
  static const String termsPlices = '/termsPlices';
  static const String homeBottomNave = '/homeBottomNave';
  static const String productDetails = '/productDetails';
  static const String serviceProvider = '/serviceProvider';
  static const String quetsManagement = '/quetsManagement';
  static const String notificationPage = '/notificationPage';
  static const String putInformationPage = '/putInformationPage';
  static const String informationCompleted = '/informationCompleted';
  static const String serviceProviderDetails = '/serviceProviderDetails';
  static const String profilePage = '/profilePage';

  static final routes = [
    GetPage(
      name: loading,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: homeBottomNave,
      page: () => HomeMainBottomNav(),
    ),
    GetPage(
      name: homePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: signUp,
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: logIn,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: newPassword,
      page: () => const CreateServiceProviderAccount(),
    ),
    GetPage(
      name: otpScreen,
      page: () => OTPPage(),
    ),
    GetPage(
      name: termsPlices,
      page: () => const TermsAndPolices(),
    ),
    GetPage(
      name: productDetails,
      page: () => const ProductDetailPage(),
    ),
    GetPage(
      name: profilePage,
      page: () => const ProfilePage(),
    ),
  ];
}
