import 'package:coffee_shop/constants/asset_path.dart';
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
                      fontFamily: 'Sora',
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
                          top: 20, left: 5,
                        ),
                        child: Text(
                          "Cappucino",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff2F2D2C),
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
                            fontFamily: 'Sora',
                            color: Color(0xff9B9B9B),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Image.asset(
                            CoffeeShopAssetsPath.ratingImage
                          ),
                          Text(
                            "4.8",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff2F2D2C)),
                          ),
                          Text(
                            "(230)",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff808080)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: Color(0xffFFF0F0),
                        image: DecorationImage(
                          image: AssetImage(CoffeeShopAssetsPath.frame19),
                        )),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF0F0),
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
                      height: 4, thickness: 2, color: Color(0xffEAEAEA))),
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
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff2F2D2C),
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
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff9b9b9b),
                        height: 1.5,
                      ),
                    children: [
                      TextSpan(
                        text:
                            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                        style: TextStyle(
                          color: Color(0xff9b9b9b),
                        ),
                      ),
                      TextSpan(
                        text: "Read More",
                        style: TextStyle(
                          color: Color(
                              0xffC67C4E), // Assuming this is the desired color for "Read More"
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
                style: TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xff2F2D2C)),
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
                      border: Border.all(color: Color(0xffDEDEDE))),
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  width: 96,
                  height: 43,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffC67C4E)),
                      color: Color(0xffFFF5EE),
                  ),
                  child: Center(
                    child: Text(
                      "M",
                      style: TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xffC67C4E)),
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
                      color: Color(0xffDEDEDE),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "L",
                      style: TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff2F2D2C)),
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
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "\$ 4.53",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          color: Color(0xffC67C4E),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              OrderScreen()));
                    },
                    child: Container(
                      height: 55,
                      width: 217,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Color(0xffC67C4E),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Color(0xffDEDEDE))),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
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
