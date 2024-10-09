import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Views/Pages/Authentication/login_page.dart';
import 'package:thiqah_services_provider/App/Views/Pages/Authentication/singup_page.dart';
import 'dart:math' as math;
import '../../../Utils/Constants/app_images.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(()=>const LoginPage());
    });
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.graphicslandingTop,width: MediaQuery.of(context).size.width),
                Center(
                  child: AnimatedBuilder(
                    animation: _controller,
                    child: Image.asset(AppImages.logo,height: (MediaQuery.of(context).size.height * 30 /100)*1.5,width: (MediaQuery.of(context).size.width * 30 /100)*1.5,),
                    builder: (context, child) {
                      return Transform.rotate(
                        angle:
                         -_controller.value * 2 * math.pi, // Full circle rotation
                        child: child,
                      );
                    },
                  ),
                ),
                Gap((MediaQuery.of(context).size.height * 6 /100) * 1.1),
                Image.asset(AppImages.graphicslandingTop,width: MediaQuery.of(context).size.height * 1.2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}