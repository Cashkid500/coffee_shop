import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/constants/color_constants.dart';
import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(CoffeeShopAssetsPath.arrowImage),
                  Text(
                    "Detail",
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Image.asset(CoffeeShopAssetsPath.heart2)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 25,
              ),
              child: Image.asset(CoffeeShopAssetsPath.cappucino5),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 5,
                        ),
                        child: Text(
                          "Cappucino",
                          style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: darkCharcoalText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                          bottom: 15,
                        ),
                        child: Text(
                          "with Chocolate",
                          style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            color: darkGray2Text,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(CoffeeShopAssetsPath.ratingImage),
                          Text(
                            "4.8",
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: darkCharcoalText),
                          ),
                          Text(
                            "(230)",
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: grayText),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: white2Text,
                        image: DecorationImage(
                          image: AssetImage(CoffeeShopAssetsPath.frame19),
                        )),
                  ),
                  Container(
                    height: 44,
                    width: 44,
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SizedBox(
                  height: 5,
                  width: 500,
                  child: Divider(
                      height: 4, thickness: 2, color: whisperText)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 35,
                bottom: 20,
              ),
              child: Text(
                "Description",
                style: TextStyle(
                  fontFamily: CoffeeShopAssetsPath.soraFont,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: darkCharcoalText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, bottom: 20),
              child: Container(
                width: 315,
                height: 65,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: darkGray2Text,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                        style: TextStyle(
                          color: darkGray2Text,
                        ),
                      ),
                      TextSpan(
                        text: "Read More",
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
              padding: const EdgeInsets.only(
                left: 35,
                bottom: 25,
              ),
              child: Text(
                "Size",
                style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: darkCharcoalText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 96,
                  height: 43,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: gray87Text)),
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  width: 96,
                  height: 43,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: pinkText),
                    color: seaShellText,
                  ),
                  child: Center(
                    child: Text(
                      "M",
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: pinkText),
                    ),
                  ),
                ),
                Container(
                  width: 96,
                  height: 43,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: gray87Text,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "L",
                      style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: darkCharcoalText),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: darkGray2Text,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "\$ 4.53",
                        style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          color: pinkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
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
                      height: 55,
                      width: 217,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: pinkButton,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: gray87Text)),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              color: whiteText,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
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
