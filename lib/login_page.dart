import 'package:fam_coding_supply/ui/widget/app_mainbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_synapsis_challenge/home_page.dart';
import 'package:flutter_synapsis_challenge/support_assets.dart';
import 'package:flutter_synapsis_challenge/support_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();

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
                  Text(
                    "Login by Code",
                    style: GoogleFonts.inter(
                      color: const Color(0xff1F3251),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    "Enter Your NIK",
                    style: GoogleFonts.inter(
                      color: const Color(0xffA0AAB4),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 18.h),
                  TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Enter NIK",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  AppMainButtonWidget(
                    height: 54.h,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      }));
                    },
                    text: "Submit",
                  ),
                  SizedBox(height: 96.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
