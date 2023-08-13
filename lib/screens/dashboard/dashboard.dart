import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/constants/text_constants.dart';
import 'package:flutter/material.dart';
import '../detail/detail.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> items = [
    CoffeeShopText.capText,
    CoffeeShopText.machText,
    CoffeeShopText.lattText,
    CoffeeShopText.ameText,
  ];
  int _selectedIndex = 0;
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                color: sealBrownText,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 30,
                                ),
                                child: Container(
                                  child: Text(
                                    CoffeeShopText.locText,
                                    style: TextStyle(
                                        fontFamily: CoffeeShopAssetsPath.soraFont,
                                        fontSize: 12,
                                        color: whiteText,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                    children: [
                                      Text(
                                        CoffeeShopText.bilText,
                                        style: TextStyle(
                                            fontFamily: CoffeeShopAssetsPath.soraFont,
                                            fontSize: 14,
                                            color: whiteText,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      ),
                                      SizedBox(width: 1),
                                      Image.asset(
                                        CoffeeShopAssetsPath.arrowDown,
                                      ),
                                    ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 62,
                            bottom: 40,
                            right: 35,
                          ),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Image.asset(CoffeeShopAssetsPath.girlImage),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 29, right: 29),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              isCollapsed: true,
                              labelText: CoffeeShopText.searchText,
                              labelStyle: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: spanishGrayText,
                              ),
                              prefixIcon: Image.asset(
                                CoffeeShopAssetsPath.searchImage,
                              ),
                              suffixIcon:
                                  Image.asset(CoffeeShopAssetsPath.frame10),
                              filled: true,
                              fillColor: nightRiderText,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -100,
                child: Container(
                  child: Image.asset(CoffeeShopAssetsPath.frame8),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 97,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? pinkText
                                  : whiteSmokeText,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontFamily: CoffeeShopAssetsPath.soraFont,
                                  fontWeight: current == index
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                  fontSize: 14,
                                  color: current == index
                                      ? whiteText
                                      : blackText,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => DetailScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 30,
                top: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 132,
                        width: 155,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(CoffeeShopAssetsPath.cappucinoImage),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 23.0, top: 8.0),
                              child: Image.asset(
                                CoffeeShopAssetsPath.starImage,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 8.0),
                              child: Text(
                                CoffeeShopText.fourPointEightText,
                                style: TextStyle(
                                  fontFamily: CoffeeShopAssetsPath.soraFont,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: whiteText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.5, right: 43.0),
                          child: Text(
                            CoffeeShopText.capText,
                            style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: Container(
                          child: Text(
                            CoffeeShopText.withChocolateText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: darkGray2Text),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(CoffeeShopText.capPriceText,
                              style: TextStyle(
                                  fontFamily: CoffeeShopAssetsPath.soraFont,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: deepBrownText),
                                ),
                            ),
                            SizedBox(width: 30.0,),
                            Image.asset(CoffeeShopAssetsPath.frame17),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 132,
                        width: 155,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(CoffeeShopAssetsPath.cappucino2),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 23.0, top: 8.0),
                              child: Image.asset(
                                CoffeeShopAssetsPath.starImage
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 8.0),
                              child: Text(
                                CoffeeShopText.fourPointEightText,
                                style: TextStyle(
                                  fontFamily: CoffeeShopAssetsPath.soraFont,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: whiteText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 43.0),
                          child: Text(
                            CoffeeShopText.capText,
                            style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: Container(
                          child: Text(
                            CoffeeShopText.withChocolateText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: darkGray2Text),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(CoffeeShopText.capPriceText,
                              style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: deepBrownText),),
                            ),
                            SizedBox(width: 30.0,),
                            Image.asset(CoffeeShopAssetsPath.frame17),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 30,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 132,
                      width: 155,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(CoffeeShopAssetsPath.cappucino3),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 23.0, top: 8.0),
                            child: Image.asset(
                              CoffeeShopAssetsPath.starImage,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 8.0),
                            child: Text(
                              CoffeeShopText.fourPointFiveText,
                              style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: whiteText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.5, right: 43.0),
                        child: Text(
                          CoffeeShopText.capText,
                          style: TextStyle(
                            fontFamily: CoffeeShopAssetsPath.soraFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 58.0),
                      child: Container(
                        child: Text(
                          CoffeeShopText.withChocolateText,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: darkGray2Text),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(CoffeeShopText.capPriceText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: deepBrownText),
                              ),
                          ),
                            SizedBox(width: 30.0,),
                          Image.asset(CoffeeShopAssetsPath.frame17),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 132,
                      width: 155,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(CoffeeShopAssetsPath.cappucino4),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 23.0, top: 8.0),
                            child: Image.asset(
                              CoffeeShopAssetsPath.starImage
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 8.0),
                            child: Text(
                              CoffeeShopText.fourPointZeroText,
                              style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: whiteText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 43.0),
                      child: Container(
                        child: Text(
                          CoffeeShopText.capText,
                          style: TextStyle(
                          fontFamily: CoffeeShopAssetsPath.soraFont,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Container(
                        child: Text(
                          CoffeeShopText.withChocolateText,
                          style: TextStyle(
                              fontFamily: CoffeeShopAssetsPath.soraFont,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: darkGray2Text),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(CoffeeShopText.capPriceText,
                            style: TextStyle(
                                fontFamily: CoffeeShopAssetsPath.soraFont,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: deepBrownText),
                              ),
                          ),
                          SizedBox(width: 30.0,),
                          Image.asset(CoffeeShopAssetsPath.frame17),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: whiteText,
            icon: Image.asset(
              CoffeeShopAssetsPath.homeImage,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(CoffeeShopAssetsPath.heartImage),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              CoffeeShopAssetsPath.bagImage,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(CoffeeShopAssetsPath.notificationImage),
            label: '',
          ),
        ],
      ),
    );
  }
}
