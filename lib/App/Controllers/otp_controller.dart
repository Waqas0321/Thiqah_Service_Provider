import 'dart:async';
import 'package:get/get.dart';

import '../Routes/app_routes.dart';

class OTPController extends GetxController {
  // RxList for reactive OTP values
  var otpValues = ["", "", "", ""].obs;
  var seconds = 120.obs; // Set default to 120
  late Timer _timer;
  bool _isTimerRunning = false;
  // Flag to check if the timer is running

  @override
  void onInit() {
    super.onInit();

  }
  @override
  void onReady() {
    super.onReady();
    resetTimer(); // Reset and start the timer when the screen is ready
  }

  void resetTimer() {
    if (_isTimerRunning) {
      _timer.cancel(); // Cancel any existing timer before resetting
    }
    seconds.value = 120; // Reset the timer to 120 seconds
    startTimer();
  }

  void startTimer() {
    if (!_isTimerRunning) { // Only start if the timer isn't running
      _isTimerRunning = true; // Set the flag to true
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (seconds.value > 0) {
          seconds.value--;
        } else {
          timer.cancel(); // Stop the timer when it reaches 0
          _isTimerRunning = false; // Reset the flag
          // Navigate to login page
        }
      });
    }
  }

  // Format seconds to MM:SS
  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void onKeyboardTap(String value) {
    for (int i = 0; i < otpValues.length; i++) {
      if (otpValues[i].isEmpty) {
        otpValues[i] = value;
        break;
      }
    }
    // Check if all OTP fields are filled
    if (otpValues.every((otp) => otp.isNotEmpty)) {
      Get.toNamed(AppRoutes.newPassword);
      seconds.value == 120;
      otpValues.value=["", "", "", ""];
      // Navigate to the login page when all fields are filled
    }
  }

  // Function to handle backspace
  void onBackspace() {
    for (int i = otpValues.length - 1; i >= 0; i--) {
      if (otpValues[i].isNotEmpty) {
        otpValues[i] = "";
        break;
      }
    }
  }

  @override
  void onClose() {
    _timer.cancel(); // Cancel the timer when the controller is closed
    seconds.value = 120; // Reset the seconds value to 120 when navigating away
    _isTimerRunning = false; // Ensure the timer is reset for future use
    super.onClose();
  }
}
