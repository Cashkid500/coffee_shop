import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/constants/text_constants.dart';
import 'package:coffee_shop/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
      }
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: blackText,
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450.sp,
              child: Image.asset(
                CoffeeShopAssetsPath.coffeeimage,
              ),
            ),
            Positioned(
              bottom: 70.sp,
              left: 40.sp,
              right: 20.sp,
              child: SizedBox(
                width: size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80.sp,
                    ),
                    SizedBox(
                      width: 260.sp,
                      child: Text(
                        CoffeeShopText.onboardingText,
                        style: TextStyle(
                            color: whiteText,
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ).animate(onPlay: (controller) {controller.repeat(period: 1500.ms);},).fade(duration: 500.ms).scale(delay: 500.ms),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    SizedBox(
                      width: 260.sp,
                      child: Text(
                        CoffeeShopText.onboarding2Text,
                        style: TextStyle(
                            color: darkGrayText,
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DashboardScreen(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 54.sp,
                        width: 317.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteText,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.sp, bottom: 10.sp),
                          child: Row(
                            children: [
                              Image.asset(CoffeeShopAssetsPath.googleimage),
                              Padding(
                                padding: EdgeInsets.only(left: 10.sp),
                                child: Text(
                                  CoffeeShopText.googleMessage,
                                  style: TextStyle(
                                      fontFamily: CoffeeShopAssetsPath.robotoFont,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: darkGrayText,
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
