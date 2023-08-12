import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/constants/text_constants.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(
            right: 25,
            left: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(CoffeeShopAssetsPath.arrowImage),
                    const Spacer(),
                    Text(
                      CoffeeShopText.ordText,
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
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
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: gray87Box)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 154,
                        height: 40,
                        decoration: BoxDecoration(
                          color: pinkButton,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            CoffeeShopText.delivText,
                            style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              color: whiteText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                        ),
                        child: Center(
                          child: Text(
                            CoffeeShopText.pickUpText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: darkCharcoalText),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child: Text(
                  CoffeeShopText.delivAddText,
                  style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontSize: 16,
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
                    fontSize: 14,
                    color: unknownColorText),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                ),
                child: Text(
                  CoffeeShopText.addressNameText,
                  style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    color: grayText,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: gray87Box)),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                children: [
                                  Image.asset(CoffeeShopAssetsPath.editImage),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Text(
                                      CoffeeShopText.editAddressText,
                                      style: TextStyle(
                                          fontFamily: CoffeeShopAssetsPath.soraFont,
                                          fontSize: 12,
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
                      width: 1,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: gray87Box)),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(CoffeeShopAssetsPath.noteImage),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              CoffeeShopText.addNoteText,
                              style: TextStyle(
                                  fontFamily: CoffeeShopAssetsPath.soraFont,
                                  fontSize: 12,
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
                    width: 20,
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
                          fontSize: 16,
                          color: darkCharcoalText,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        CoffeeShopText.withChocolateText,
                        style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: darkGray2Text),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: gray87Text)),
                          child: Center(
                              child: CoffeeShopAssetsPath.remove)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        CoffeeShopText.oneText,
                        style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: darkCharcoalText),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: gray87Box)),
                          child: Center(
                              child: CoffeeShopAssetsPath.add)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: SizedBox(
                  height: 4,
                  width: 375,
                  child: Divider(
                    height: 4,
                    thickness: 5,
                    color: whiteText,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 300,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                          padding: const EdgeInsets.only(right: 60.0),
                          child: Text(
                            CoffeeShopText.discountText,
                            style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              fontSize: 14,
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
                height: 25,
              ),
              Text(
                CoffeeShopText.paySummaryText,
                style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: darkCharcoalText),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CoffeeShopText.priceText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: darkCharcoalText,
                    ),
                  ),
                  Text(
                    CoffeeShopText.capPriceText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: darkCharcoalText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CoffeeShopText.delivFeeText,
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: darkCharcoalText,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: CoffeeShopAssetsPath.soraFont,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: darkCharcoalText,
                      ),
                      children: [
                        TextSpan(text: CoffeeShopText.textSpanText),
                        TextSpan(
                          text: CoffeeShopText.textSpan2Text,
                          style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: darkCharcoalText,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: SizedBox(
                    height: 10,
                    width: 315,
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
                      fontSize: 14,
                      color: darkCharcoalText,
                    ),
                  ),
                  Text(
                    CoffeeShopText.totalPriceText,
                    style: TextStyle(
                        fontFamily: CoffeeShopAssetsPath.soraFont,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: darkCharcoalText),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(CoffeeShopAssetsPath.moneyImage),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 51,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: pinkButton,
                        ),
                        child: Center(
                          child: Text(
                            CoffeeShopText.cashText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: whiteText),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        CoffeeShopText.totalPriceText,
                        style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: darkCharcoalText),
                      ),
                    ],
                  ),
                  Image.asset(CoffeeShopAssetsPath.vectorImage)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 315,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: pinkButton),
                child: Center(
                  child: Text(
                    CoffeeShopText.orderButtonText,
                    style: TextStyle(
                        fontFamily: CoffeeShopAssetsPath.soraFont,
                        fontWeight: FontWeight.w600,
                        color: whiteText,
                        fontSize: 16),
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
