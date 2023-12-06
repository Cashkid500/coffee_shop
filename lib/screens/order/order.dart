import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/constants/text_constants.dart';
import 'package:coffee_shop/screens/detail/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 25.sp,
            left: 25.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40.sp,
                  bottom: 30.sp,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => DetailScreen()));
                        },
                      child: Image.asset(CoffeeShopAssetsPath.arrowImage)),
                    const Spacer(),
                    Text(
                      CoffeeShopText.ordText,
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: darkCharcoalText),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: lightRedBox,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: gray87Box)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 154.sp,
                        height: 40.sp,
                        decoration: BoxDecoration(
                          color: pinkButton,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            CoffeeShopText.delivText,
                            style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              color: whiteText,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 50.sp,
                        ),
                        child: Center(
                          child: Text(
                            CoffeeShopText.pickUpText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: darkCharcoalText),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.sp, bottom: 15.sp),
                child: Text(
                  CoffeeShopText.delivAddText,
                  style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: darkCharcoalText,
                  ),
                ),
              ),
              Text(
                CoffeeShopText.houseOwnersNameText,
                style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: unknownColorText),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 10.sp,
                  top: 10.sp,
                ),
                child: Text(
                  CoffeeShopText.addressNameText,
                  style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    color: grayText,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20.sp,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.sp),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                border: Border.all(color: gray87Box)),
                            child: Padding(
                              padding: EdgeInsets.only(right: 5.sp),
                              child: Row(
                                children: [
                                  Image.asset(CoffeeShopAssetsPath.editImage),
                                  SizedBox(
                                    width: 5.sp,
                                  ),
                                  Center(
                                    child: Text(
                                      CoffeeShopText.editAddressText,
                                      style: TextStyle(
                                          fontFamily: CoffeeShopAssetsPath.soraFont,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: unknownColorText),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 1.sp,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(color: gray87Box)),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(CoffeeShopAssetsPath.noteImage),
                            SizedBox(
                              width: 5.sp,
                            ),
                            Text(
                              CoffeeShopText.addNoteText,
                              style: TextStyle(
                                  fontFamily: CoffeeShopAssetsPath.soraFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: unknownColorText),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(CoffeeShopAssetsPath.cappucino6),
                  SizedBox(
                    width: 20.sp,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CoffeeShopText.cap2Text,
                        style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: darkCharcoalText,
                        ),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        CoffeeShopText.withChocolateText,
                        style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: darkGray2Text),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50.sp,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 30.sp,
                          width: 30.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              border: Border.all(color: gray87Text)),
                          child:const Center(
                              child: CoffeeShopAssetsPath.remove)),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Text(
                        CoffeeShopText.oneText,
                        style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            color: darkCharcoalText),
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Container(
                          height: 30.sp,
                          width: 30.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              border: Border.all(color: gray87Box)),
                          child:const Center(
                              child: CoffeeShopAssetsPath.add)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.sp),
                child: SizedBox(
                  height: 4.sp,
                  width: 375.sp,
                  child: Divider(
                    height: 4.sp,
                    thickness: 5.sp,
                    color: whiteText,
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                children: [
                  Container(
                    width: 300.sp,
                    height: 56.sp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: whiteBox),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset(CoffeeShopAssetsPath.discountImage),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 60.sp),
                          child: Text(
                            CoffeeShopText.discountText,
                            style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: darkCharcoalText,
                            ),
                          ),
                        ),
                        Image.asset(CoffeeShopAssetsPath.arrow2),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.sp,
              ),
              Text(
                CoffeeShopText.paySummaryText,
                style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: darkCharcoalText),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CoffeeShopText.priceText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: darkCharcoalText,
                    ),
                  ),
                  Text(
                    CoffeeShopText.capPriceText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: darkCharcoalText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CoffeeShopText.delivFeeText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: darkCharcoalText,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: CoffeeShopAssetsPath.soraFont,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: darkCharcoalText,
                      ),
                      children: [
                       const TextSpan(text: CoffeeShopText.textSpanText),
                        TextSpan(
                          text: CoffeeShopText.textSpan2Text,
                          style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: darkCharcoalText,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.sp),
                child: SizedBox(
                    height: 10.sp,
                    width: 315.sp,
                    child: Divider(thickness: 2, color: whisperText)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CoffeeShopText.totalPaymentText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: darkCharcoalText,
                    ),
                  ),
                  Text(
                    CoffeeShopText.totalPriceText,
                    style: TextStyle(
                        fontFamily: CoffeeShopAssetsPath.soraFont,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: darkCharcoalText),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(CoffeeShopAssetsPath.moneyImage),
                      SizedBox(
                        width: 20.sp,
                      ),
                      Container(
                        width: 51.sp,
                        height: 24.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: pinkButton,
                        ),
                        child: Center(
                          child: Text(
                            CoffeeShopText.cashText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: whiteText),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.sp,
                      ),
                      Text(
                        CoffeeShopText.totalPriceText,
                        style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: darkCharcoalText),
                      ),
                    ],
                  ),
                  Image.asset(CoffeeShopAssetsPath.vectorImage)
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                width: 315.sp,
                height: 55.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: pinkButton),
                child: Center(
                  child: Text(
                    CoffeeShopText.orderButtonText,
                    style: TextStyle(
                        fontFamily: CoffeeShopAssetsPath.soraFont,
                        fontWeight: FontWeight.w600,
                        color: whiteText,
                        fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


