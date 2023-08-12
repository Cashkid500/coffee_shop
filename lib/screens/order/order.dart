import 'package:coffee_shop/constants/asset_path.dart';
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
                      "Order",
                      style: TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xff2F2D2C)),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffF0F0F0),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffDEDEDE))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 154,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffC67C4E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Deliver",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.white,
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
                            "Pick Up",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xff2F2D2C)),
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
                  "Delivery Address",
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2F2D2C),
                  ),
                ),
              ),
              Text(
                "JI. Kpg Sutoyo",
                style: TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff303336)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                ),
                child: Text(
                  "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                  style: TextStyle(
                    fontFamily: 'Sora',
                    color: Color(0xff808080),
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
                                border: Border.all(color: Color(0xffDEDEDE))),
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
                                      "Edit Address",
                                      style: TextStyle(
                                          fontFamily: 'Sora',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400, color: Color(0xff303336)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 1,),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Color(0xffDEDEDE))),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(CoffeeShopAssetsPath.noteImage),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Add Note",
                              style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 12, fontWeight: FontWeight.w400, color:Color(0xff303336)),
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
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cappucino",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff2F2D2C),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "with Chocolate",
                        style: TextStyle(
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff9B9B9B)),
                      )
                    ],
                  ),
                  SizedBox(width: 50,),
                  Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Color(0xffDEDEDE))),
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            size: 18,
                          ))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600, 
                            fontSize: 15, 
                            color: Color(0xff2F2D2C)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Color(0xffDEDEDE))),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 18,
                          ))),
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
                    color: Color(0xffF4F4F4),
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
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset(CoffeeShopAssetsPath.discountImage),
                          ],
                        ),
                        Text(
                          "1 Discount is applied",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff2F2D2C),),
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
                "Payment Summary",
                style: TextStyle(fontFamily: 'Sora', fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff2F2D2C)),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff2F2D2C),
                    ),
                  ),
                  Text(
                    "\$ 4.53",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff2F2D2C),
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
                    "Delivery Fee",
                    style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff2F2D2C),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontFamily: 'Sora',
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff2F2D2C),
                      ),
                      children: [
                        TextSpan(text: "\$ 2.0 "),
                        TextSpan(
                          text: "\$ 1.0",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff2F2D2C),
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
                    child: Divider(thickness: 2, color: Color(0xffEAEAEA))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff2F2D2C),
                    ),
                  ),
                  Text(
                    "\$ 5.53",
                    style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff2F2D2C)),
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
                          color: Color(0xffC67C4E),
                        ),
                        child: Center(
                          child: Text(
                            'Cash',
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("\$ 5.53",
                        style: TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff2F2D2C)),
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
                    color: Color(0xffC67C4E)),
                child: Center(
                  child: Text(
                    "Order",
                    style: TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff),
                        fontSize: 16) ,
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
