import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/constants/text_constants.dart';
import 'package:coffee_shop/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../order/order.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40.sp, left: 15.sp, right: 15.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => DashboardScreen()));
                      },
                    child: Image.asset(CoffeeShopAssetsPath.arrowImage)),
                  Text(
                    CoffeeShopText.detText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                  Image.asset(CoffeeShopAssetsPath.heart2)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.sp,
                left: 25.sp,
              ),
              child: Image.asset(CoffeeShopAssetsPath.cappucino5),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.sp,
                          left: 5.sp,
                        ),
                        child: Text(
                          CoffeeShopText.cap2Text,
                          style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            color: darkCharcoalText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.sp,
                          left: 10.sp,
                          bottom: 15.sp,
                        ),
                        child: Text(
                          CoffeeShopText.withChocolateText,
                          style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            color: darkGray2Text,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.sp,
                          ),
                          Image.asset(CoffeeShopAssetsPath.ratingImage),
                          Text(
                            CoffeeShopText.fourPointEightText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: darkCharcoalText),
                          ),
                          Text(
                            CoffeeShopText.bracText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: grayText),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 44.sp,
                    width: 44.sp,
                    decoration: BoxDecoration(
                        color: white2Text,
                        image: DecorationImage(
                          image: AssetImage(CoffeeShopAssetsPath.frame19),
                        )),
                  ),
                  Container(
                    height: 44.sp,
                    width: 44.sp,
                    decoration: BoxDecoration(
                      color: white2Text,
                      image: DecorationImage(
                        image: AssetImage(CoffeeShopAssetsPath.frame20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.sp),
              child: SizedBox(
                  height: 5.sp,
                  width: 500.sp,
                  child: Divider(height: 4.sp, thickness: 2.sp, color: whisperText)),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.sp,
                left: 35.sp,
                bottom: 20.sp,
              ),
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 8.0, end: 16.0),
                duration: Duration(milliseconds: 2000),
                builder: (BuildContext context, double value, Widget? child) {
                  return Text(
                    CoffeeShopText.descripText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: value,
                      color: darkCharcoalText,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.sp, bottom: 20.sp),
              child: Container(
                width: 315.sp,
                height: 65.sp,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: darkGray2Text,
                      height: 1.5.sp,
                    ),
                    children: [
                      TextSpan(
                        text: CoffeeShopText.capLongText,
                        style: TextStyle(
                          color: darkGray2Text,
                        ),
                      ),
                      TextSpan(
                        text: CoffeeShopText.readMoreText,
                        style: TextStyle(
                          color: pinkText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 35.sp,
                bottom: 25.sp,
              ),
              child: Text(
                CoffeeShopText.sizeText,
                style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: darkCharcoalText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 96.sp,
                  height: 43.sp,
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: gray87Text)),
                  child: Center(
                    child: Text(
                      CoffeeShopText.sText,
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                  ),
                ),
                Container(
                  width: 96.sp,
                  height: 43.sp,
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: pinkText),
                    color: seaShellText,
                  ),
                  child: Center(
                    child: Text(
                      CoffeeShopText.mText,
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: pinkText),
                    ),
                  ),
                ),
                Container(
                  width: 96.sp,
                  height: 43.sp,
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: gray87Text,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      CoffeeShopText.lText,
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: darkCharcoalText),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.sp, left: 0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CoffeeShopText.priceText,
                        style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: darkGray2Text,
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      Text(
                        CoffeeShopText.capPriceText,
                        style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          color: pinkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => OrderScreen()));
                    },
                    child: Container(
                      height: 55.sp,
                      width: 217.sp,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: pinkButton,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: gray87Text)),
                      child: Center(
                        child: Text(
                          CoffeeShopText.buttonText,
                          style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              color: whiteText,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
