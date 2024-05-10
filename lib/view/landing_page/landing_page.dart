import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:inspectstore_landing_web/core/Components/text_widget.dart';
import 'package:inspectstore_landing_web/core/constant/assets.dart';
import 'package:inspectstore_landing_web/core/constant/colors.dart';
import 'package:inspectstore_landing_web/view/landing_page/landing_page_model.dart';
import 'package:provider/provider.dart';

class LandingPageScreen extends StatefulWidget {
  const LandingPageScreen({super.key});

  @override
  State<LandingPageScreen> createState() => _LandingPageScreenState();
}

class _LandingPageScreenState extends State<LandingPageScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            ///
            /// ----------> Main Landing Page </----------
            ///
            SizedBox(
              width: 1440.w,
              height: 864.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 30.h),
                child: Consumer<LandingPageModel>(
                    builder: (context, model, child) {
                  return Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(width: 324.w, height: 61.h, inspectLogo),
                          const Spacer(),
                          ...List.generate(model.menuList.length, (index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(
                                text: model.menuList[index],
                                color: blackColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'Arial',
                              ),
                            );
                          }),
                        ],
                      ),
                      SizedBox(height: 53.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 100.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                lineHeight: 1.2,
                                width: 500.w,
                                text:
                                    'Buy or Upload House Survey Reports Today!',
                                color: blackColor,
                                fontSize: 75.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Arial',
                                maxlines: 4,
                              ),
                              SizedBox(height: 8.h),
                              Image.asset(
                                buyBannerBottom,
                                height: 50.h,
                                width: 500.w,
                              ),
                              SizedBox(height: 8.h),
                              CustomText(
                                lineHeight: 1.2,
                                width: 460.w,
                                text:
                                    'Unlock Confidence in Your Home: Explore and Share Comprehensive House Survey Reports with INSPECTSTORE',
                                color: blackColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Arial',
                              ),
                              SizedBox(height: 55.h),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(redColor2),
                                  minimumSize: MaterialStateProperty.all(
                                      Size(156.w, 62.h)),
                                ),
                                onPressed: () {
                                  _scrollController.animateTo(
                                    context.height,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: CustomText(
                                  text: 'Try for free',
                                  color: whiteColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 500.h,
                                width: 660.w,
                                child: Image.asset(
                                  landingPageApp,
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                              SizedBox(height: 60.h),
                              CustomText(
                                  text: 'Download Now! it\'s free',
                                  fontSize: 30.sp,
                                  color: redColor2,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w700),
                              SizedBox(height: 30.h),
                              Row(
                                children: [
                                  Image.asset(appleDownload,
                                      height: 50.h, width: 150.w),
                                  SizedBox(width: 50.w),
                                  Image.asset(playstoreDownload,
                                      height: 50.h, width: 150.w),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  );
                }),
              ),
            ),

            ///
            /// ----------> Main Landing Page </----------
            ///

            SizedBox(
              width: 1440.w,
              height: 864.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 83.h),
                child: Stack(
                  children: [
                    Center(child: Image.asset(backgroundHome)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imageUpload, width: 42.w, height: 51.h),
                            SizedBox(height: 8.h),
                            CustomText(
                                text: "Buy House Survey PDF Easily",
                                fontSize: 27.sp,
                                color: blackColor,
                                width: 253.w,
                                fontWeight: FontWeight.w600),
                            SizedBox(height: 20.h),
                            CustomText(
                              text:
                                  'Find and purchase house survey PDFs effortlessly with INSPECTSTORE. Browse and buy,  Your perfect survey is just a click away!',
                              fontSize: 21.sp,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                              width: 300.w,
                              fontFamily: 'Poppins',
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imageUpload, width: 42.w, height: 51.h),
                            SizedBox(height: 8.h),
                            CustomText(
                                text: "Buy House Survey PDF Easily",
                                fontSize: 27.sp,
                                color: blackColor,
                                width: 253.w,
                                fontWeight: FontWeight.w600),
                            SizedBox(height: 20.h),
                            CustomText(
                              text:
                                  'Find and purchase house survey PDFs effortlessly with INSPECTSTORE. Browse and buy,  Your perfect survey is just a click away!',
                              fontSize: 21.sp,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                              width: 300.w,
                              fontFamily: 'Poppins',
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            ///
            /// ----------> Main Landing Page </----------
            ///

            SizedBox(
              width: 1440.w,
              height: 864.h,
              child: Stack(
                children: [
                  Container(
                    width: 1440.w,
                    height: 864.h,
                    color: const Color(0xff161C28),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 51.w, vertical: 165.h),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                                text:
                                    'The App That Gives You Reports Of Houses What You Really Want',
                                fontSize: 34.sp,
                                color: whiteColor,
                                width: 573.w,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w700),
                            SizedBox(height: 82.h),
                            CustomText(
                                text:
                                    'What is the one thing that keeps from getting what we want?',
                                fontSize: 30.sp,
                                color: whiteColor,
                                width: 573.w,
                                // textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400),
                            SizedBox(height: 29.h),
                            CustomText(
                                text: 'It’s always the price…',
                                fontSize: 30.sp,
                                color: whiteColor,
                                width: 573.w,
                                // textAlign: TextAlign.center,
                                fontWeight: FontWeight.w700),
                            SizedBox(height: 51.h),
                            CustomText(
                                text:
                                    'At INSPECTSORE, you can find what you want at the price you want.',
                                fontSize: 30.sp,
                                color: whiteColor,
                                width: 573.w,
                                // textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                      ),
                      Image.asset(blankBGMobiles, width: 720.w, height: 864.h),
                    ],
                  )
                ],
              ),
            ),

            ///
            /// ----------> Main Landing Page </----------
            ///

            SizedBox(
              width: 1440.w,
              height: 864.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                            text: 'What it worth to you?',
                            fontSize: 44.sp,
                            color: blackColor,
                            width: 691.w,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w700),
                        SizedBox(height: 150.h),
                        Image.asset(mobiles,
                            height: 570.h, width: 650.w, fit: BoxFit.contain),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                            text:
                                '"Unlock the power of informed property decisions with INSPECTSTORE.',
                            fontSize: 32.sp,
                            color: blackColor,
                            width: 691.w,
                            letterSpacing: 2.5,
                            // textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 40.h),
                        CustomText(
                            text:
                                'Our platform offers a seamless experience for purchasing detailed house survey reports in PDF format.',
                            fontSize: 32.sp,
                            color: blackColor,
                            width: 691.w,
                            letterSpacing: 2.5,
                            // textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 40.h),
                        CustomText(
                            text:
                                'Gain confidence in your real estate transactions by accessing comprehensive insights into your prospective home.',
                            fontSize: 32.sp,
                            color: blackColor,
                            width: 691.w,
                            // textAlign: TextAlign.center,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 40.h),
                        CustomText(
                            text:
                                'Additionally, easily upload your own survey reports to streamline the process for potential buyers.',
                            fontSize: 32.sp,
                            color: blackColor,
                            width: 691.w,
                            letterSpacing: 2.5,
                            // textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 40.h),
                        CustomText(
                            text:
                                'Explore INSPECTSTORE today and make confident choices for your home!"',
                            fontSize: 32.sp,
                            color: blackColor,
                            width: 691.w,
                            letterSpacing: 2.5,
                            // textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400),
                      ],
                    )
                  ],
                ),
              ),
            ),

            ///
            /// ----------> Main Landing Page </----------
            ///

            SizedBox(
              width: 1440.w,
              height: 864.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'How it works?',
                      fontSize: 44.sp,
                      color: blackColor,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w700),
                  CustomText(
                      text: 'Browse, Purchase, Upload',
                      fontSize: 34.sp,
                      color: blackColor,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400),
                  SizedBox(height: 100.h),
                  Consumer<LandingPageModel>(builder: (context, model, child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ...List.generate(model.howItWork.length, (index) {
                          return Container(
                            height: 417.h,
                            width: 336.w,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(23.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(model.howItWork[index],
                                      height: 121.h, width: 121.w),
                                  CustomText(
                                      text: model.howItWorkLabel[index],
                                      fontSize: 30.sp,
                                      color: redColor2,
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w700),
                                  CustomText(
                                      text: model.howItWorkDesciption[index],
                                      fontSize: 21.sp,
                                      color: blackColor,
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w400),
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    );
                  }),
                  SizedBox(height: 100.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          text: 'Download Now! it\'s free',
                          fontSize: 30.sp,
                          color: redColor2,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w700),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(appleDownload,
                              height: 50.h, width: 150.w),
                          SizedBox(width: 50.w),
                          Image.asset(playstoreDownload,
                              height: 50.h, width: 150.w),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            ///
            /// ----------> Main Landing Page </----------
            ///

            SizedBox(
              width: 1440.w,
              height: 864.h,
              child: Stack(
                children: [
                  Container(
                    width: 1440.w,
                    height: 864.h,
                    color: const Color(0xff161C28),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        stopWastingMobile,
                        fit: BoxFit.contain,
                        scale: 0.4,
                      ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 51.w, vertical: 165.h),
                      //   child: Column(
                      //     // crossAxisAlignment: CrossAxisAlignment.end,
                      //     // mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       CustomText(
                      //           text:
                      //               'The App That Gives You Reports Of Houses What You Really Want',
                      //           fontSize: 34.sp,
                      //           color: whiteColor,
                      //           width: 573.w,
                      //           textAlign: TextAlign.center,
                      //           fontWeight: FontWeight.w700),
                      //       SizedBox(height: 82.h),
                      //       CustomText(
                      //           text:
                      //               'What is the one thing that keeps from getting what we want?',
                      //           fontSize: 30.sp,
                      //           color: whiteColor,
                      //           width: 573.w,
                      //           // textAlign: TextAlign.center,
                      //           fontWeight: FontWeight.w400),
                      //       SizedBox(height: 29.h),
                      //       CustomText(
                      //           text: 'It’s always the price…',
                      //           fontSize: 30.sp,
                      //           color: whiteColor,
                      //           width: 573.w,
                      //           // textAlign: TextAlign.center,
                      //           fontWeight: FontWeight.w700),
                      //       SizedBox(height: 51.h),
                      //       CustomText(
                      //           text:
                      //               'At INSPECTSORE, you can find what you want at the price you want.',
                      //           fontSize: 30.sp,
                      //           color: whiteColor,
                      //           width: 573.w,
                      //           // textAlign: TextAlign.center,
                      //           fontWeight: FontWeight.w400),
                      //     ],
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}