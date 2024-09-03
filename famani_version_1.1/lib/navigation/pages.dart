import 'package:get/get.dart';
import 'package:famani_parcel_delivery/modules/login/view/otp_verification.dart';
import 'package:famani_parcel_delivery/navigation/routes.dart';
import '../bindings/all_controllers_bindings.dart';
import '../modules/home/home_screen/view/home_screen.dart';
import '../modules/home/new_order/view/add_address_manually.dart';
import '../modules/home/new_order/view/apply_coupon.dart';
import '../modules/home/new_order/view/choose_location_on_map.dart';
import '../modules/home/new_order/view/new_request.dart';
import '../modules/home/new_order/view/request_summary.dart';
import '../modules/home/new_order/view/select_location.dart';
import '../modules/home/new_order/view/select_parcel_type.dart';
import '../modules/home/new_order/view/select_vehicle.dart';
import '../modules/home/new_order/view/weight_of_parcel.dart';
import '../modules/home/orders/view/booking_details_screen.dart';
import '../modules/home/orders/view/booking_screen_main.dart';
import '../modules/home/orders/view/track_driver.dart';
import '../modules/home/profile/view/notifications.dart';
import '../modules/home/profile/view/profile_screen.dart';
import '../modules/home/profile/view/raise_issue.dart';
import '../modules/home/profile/view/report_issue.dart';
import '../modules/login/view/email_login.dart';
import '../modules/login/view/phone_login.dart';
import '../modules/login/view/registration_screen.dart';
import '../modules/login/view/spalash_screen.dart';
import '../modules/login/view/upload_identity.dart';

class Pages {
  static List<GetPage> getPages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
    ),

    GetPage(
      name: Routes.phoneLoginScreen,
      page: () => PhoneLoginScreen(),
    ),

    GetPage(
      name: Routes.otpScreen,
      page: () => OtpScreen(),
    ),

    GetPage(
      name: Routes.emailLoginScreen,
      page: () => EmailLogin(),
    ),

    GetPage(
      name: Routes.registrationScreen,
      page: () => RegistrationScreen(),
    ),

    GetPage(
      name: Routes.uploadeIdentyScreen,
      page: () => UploadeIdenty(),
    ),

    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding: AllControllerBindings(),
    ),

    GetPage(
      name: Routes.newRequestScreen,
      page: () => NewRequestScreen(),
    ),

    GetPage(
      name: Routes.selectLocationScreen,
      page: () => SelectLocation(),
    ),

    GetPage(
      name: Routes.addAddressOnMap,
      page: () => ChooseLocationOnMap(),
    ),

    GetPage(
      name: Routes.addAddressManuallyScreen,
      page: () => AddAddressManually(),
    ),

    GetPage(
      name: Routes.selectVehicleScreen,
      page: () => SelectVehicle(),
    ),

    GetPage(
      name: Routes.selectParcelType,
      page: () => SelectParcelType(),
    ),

    GetPage(
      name: Routes.selectParcelWeight,
      page: () => SelectParcelWeight(),
    ),

    GetPage(
      name: Routes.requestSummaryScreen,
      page: () => RequestSummaryScreen(),
    ),

    GetPage(
      name: Routes.applyCoupons,
      page: () => ApplyCoupons(),
    ),

    GetPage(
      name: Routes.bookingScreenMain,
      page: () => BookingScreenMain(),
    ),

    GetPage(
      name: Routes.bookingDetailsScreen,
      page: () => BookingDetails(),
    ),

    GetPage(
      name: Routes.trackDriverScreen,
      page: () => TrackDriverScreen(),
    ),

    GetPage(
      name: Routes.raiseIssueScreen,
      page: () => RaiseIssueScreen(),
    ),

    GetPage(
        name: Routes.profileScreen,
        page: () => MyProfileScreen(),
    ),

    GetPage(
        name: Routes.notificationScreen,
        page: () => NotificationScreen(),
    ),

    GetPage(
        name: Routes.reportIssueScreen,
        page: () => ReportIssueScreen(),
    ),

  ];
}
