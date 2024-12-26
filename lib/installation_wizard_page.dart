import 'dart:convert';

import 'package:fam_coding_supply/fam_coding_supply.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_synapsis_challenge/controller/installation_controller.dart';
import 'package:flutter_synapsis_challenge/support_assets.dart';
import 'package:flutter_synapsis_challenge/support_colors.dart';
import 'package:flutter_synapsis_challenge/widget/loading_indicator_bar_widget.dart';
import 'package:flutter_synapsis_challenge/widget/custom_linear_progress_indicator.dart';
import 'package:flutter_synapsis_challenge/widget/progress_indicator_bar.dart';

class InstallationWizardPage extends StatefulWidget {
  const InstallationWizardPage({super.key});

  @override
  State<InstallationWizardPage> createState() => _InstallationWizardPageState();
}

class _InstallationWizardPageState extends State<InstallationWizardPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> progressAnimation;

  DeviceInfoData? deviceInfoData;

  @override
  void initState() {
    // controller = AnimationController(
    //   /// [AnimationController]s can be created with `vsync: this` because of
    //   /// [TickerProviderStateMixin].
    //   vsync: this,
    //   duration: const Duration(seconds: 5),
    // )..addListener(() {
    //     setState(() {});
    //   });
    // controller.repeat(reverse: false);
    _simulateProgress();
    // handle();
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   deviceInfoData = await InstallationController().getDeviceDataInfo();
    //   AppLoggerCS.debugLog("value: ${jsonEncode(deviceInfoData?.toMap())}");
    // });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool progressDone = false;
  // bool progressDone = true;
  double _progress = 0.0;

  void _simulateProgress() async {
    // Simulate progress updates
    while (_progress < 1.0) {
      await Future.delayed(const Duration(milliseconds: 100));
      setState(() {
        // _progress += 0.01; // Increment progress
        _progress += 0.05; // Increment progress
        // AppLoggerCS.debugLog("_progress: $_progress");
      });
    }
    if (_progress >= 1.0) {
      deviceInfoData = await InstallationController().getDeviceDataInfo();
      AppLoggerCS.debugLog("value: ${jsonEncode(deviceInfoData?.toMap())}");
      setState(() {
        progressDone = true;
      });
    }
  }

  handle() {
    // Initialize the AnimationController
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Smooth progress duration
    );

    // Define animation from 0 to 1
    progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut, // Smooth easing curve
      ),
    );

    // Start the animation
    controller.repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: SupportColors.backgroundBlack,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // height: 422.h,
              width: 620.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.h),
              ),
              padding: EdgeInsets.all(32.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        SupportAssets.iconInstallation,
                        height: 56.h,
                        width: 56.h,
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Installation Wizard",
                            style: GoogleFonts.inter(
                              color: const Color(0xff1F3251),
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Device must be registered before can be used",
                            style: GoogleFonts.inter(
                              color: const Color(0xff1073FC),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 103.h),
                  progressDone
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your serial number",
                              style: GoogleFonts.inter(
                                color: const Color(0xff121212),
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Container(
                              alignment: Alignment.center,
                              width: 508.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffD0D7DE),
                                ),
                                borderRadius: BorderRadius.circular(4.h),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 14.h),
                                child: SelectableText(
                                  "${deviceInfoData?.randomIdentifier}",
                                  style: GoogleFonts.inter(
                                    color: const Color(0xff646464),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              "Waiting for activation...",
                              style: GoogleFonts.inter(
                                color: const Color(0xff1073FC),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // LoadingProgressBar(
                            //   progress: 0.3,
                            //   height: 12.h,
                            //   backgroundColor: Color(0xffD9D9D9),
                            // ),
                            // ProgressIndicatorExample(),
                            // SizedBox(
                            //   width: 508.w,
                            //   child: ClipRRect(
                            //     borderRadius: BorderRadius.circular(12.h / 2),
                            //     child: LinearProgressIndicator(
                            //       value: controller.value,
                            //       semanticsLabel: 'Linear progress indicator',
                            //       minHeight: 12.h,
                            //       backgroundColor: const Color(0xffD9D9D9),
                            //       color: const Color(0xff1073FC),
                            //     ),
                            //   ),
                            // ),

                            // AnimatedBuilder(
                            //   animation: progressAnimation,
                            //   builder: (context, child) {
                            //     return CustomLinearProgressIndicator(
                            //       height: 8,
                            //       color: const Color(0xff1073FC),
                            //       backgroundColor: Colors.grey.shade300,
                            //       value: progressAnimation.value, // Smooth progress value
                            //     );
                            //   },
                            // ),
                            SizedBox(
                              width: 508.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.h / 2),
                                child: CustomLinearProgressIndicator(
                                  height: 12.h,
                                  // value: controller.value,
                                  value: _progress,
                                  backgroundColor: const Color(0xffD9D9D9),
                                  color: const Color(0xff1073FC),
                                ),
                              ),
                            ),

                            SizedBox(height: 20.h),
                            // Stack(
                            //   children: [
                            //     Container(
                            //       height: 12.h,
                            //       width: 508.w,
                            //       decoration: BoxDecoration(
                            //         color: const Color(0xffD9D9D9),
                            //         borderRadius: BorderRadius.circular(8.h),
                            //       ),
                            //     ),
                            //     Container(
                            //       height: 12.h,
                            //       width: 213.w,
                            //       decoration: BoxDecoration(
                            //         color: const Color(0xff1073FC),
                            //         borderRadius: BorderRadius.circular(8.h),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(height: 20.h),
                            Text(
                              "Please wait",
                              style: GoogleFonts.inter(
                                color: const Color(0xff121212),
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "We tried to install your device",
                              style: GoogleFonts.inter(
                                color: const Color(0xff121212),
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                  SizedBox(height: 103.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Version 1.0.0",
                        style: GoogleFonts.sora(
                          color: const Color(0xff000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
