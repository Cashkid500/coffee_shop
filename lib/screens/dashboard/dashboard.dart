import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/constants/text_constants.dart';
import 'package:coffee_shop/screens/detail/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  String starsymbolpath = CoffeeShopAssetsPath.starImage;
  String captextpath = CoffeeShopText.capText;
  String withchocolatepath = CoffeeShopText.withChocolateText;
  String cappricepath = CoffeeShopText.capPriceText;

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
                  height: 270.sp,
                  color: sealBrownText,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 30.sp,
                                  ),
                                  child: Container(
                                    child: Text(
                                      CoffeeShopText.locText,
                                      style: TextStyle(
                                          fontFamily:
                                              CoffeeShopAssetsPath.soraFont,
                                          fontSize: 12.sp,
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
                                          fontFamily:
                                              CoffeeShopAssetsPath.soraFont,
                                          fontSize: 14.sp,
                                          color: whiteText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 1.sp),
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
                            padding: EdgeInsets.only(
                              top: 62.sp,
                              bottom: 40.sp,
                              right: 35.sp,
                            ),
                            child: Container(
                              alignment: Alignment.topRight,
                              child:
                                  Image.asset(CoffeeShopAssetsPath.girlImage),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 29.sp, right: 29.sp),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.sp),
                                isCollapsed: true,
                                labelText: CoffeeShopText.searchText,
                                labelStyle: TextStyle(
                                  fontFamily: CoffeeShopAssetsPath.soraFont,
                                  fontSize: 14.sp,
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
                                  borderRadius: BorderRadius.circular(15.r),
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
                  bottom: -100.sp,
                  child: Container(
                    child: Image.asset(CoffeeShopAssetsPath.frame8),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 120.sp),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.sp,
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
                              width: 97.sp,
                              height: 45.sp,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? pinkText
                                    : whiteSmokeText,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    fontFamily: CoffeeShopAssetsPath.soraFont,
                                    fontWeight: current == index
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                    fontSize: 14.sp,
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
                    builder: (BuildContext context) =>const DetailScreen()));
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.sp,
                  right: 30.sp,
                  top: 25.sp,
                ),
                child: Wrap(
                  spacing: 10.sp,
                  runSpacing: 10.sp,
                  children: [
                    CappuccinoA(
                        imagepath: CoffeeShopAssetsPath.cappucinoImage,
                        starsymbolpath: starsymbolpath,
                        fourpointeightpath: CoffeeShopText.fourPointEightText,
                        captextpath: captextpath,
                        withchocolatepath: withchocolatepath,
                        cappricepath: cappricepath),
                    CappuccinoA(
                        imagepath: CoffeeShopAssetsPath.cappucino2,
                        starsymbolpath: starsymbolpath,
                        fourpointeightpath: CoffeeShopText.fourPointEightText,
                        captextpath: captextpath,
                        withchocolatepath: withchocolatepath,
                        cappricepath: cappricepath),
                    CappuccinoA(
                        imagepath: CoffeeShopAssetsPath.cappucino3,
                        starsymbolpath: starsymbolpath,
                        fourpointeightpath: CoffeeShopText.fourPointFiveText,
                        captextpath: captextpath,
                        withchocolatepath: withchocolatepath,
                        cappricepath: cappricepath),
                    CappuccinoA(
                        imagepath: CoffeeShopAssetsPath.cappucino4,
                        starsymbolpath: starsymbolpath,
                        fourpointeightpath: CoffeeShopText.fourPointZeroText,
                        captextpath: captextpath,
                        withchocolatepath: withchocolatepath,
                        cappricepath: cappricepath),
                  ],
                ),
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

class CappuccinoA extends StatelessWidget {
  const CappuccinoA({
    super.key,
    required this.imagepath,
    required this.starsymbolpath,
    required this.fourpointeightpath,
    required this.captextpath,
    required this.withchocolatepath,
    required this.cappricepath,
  });

  final String imagepath;
  final String starsymbolpath;
  final String fourpointeightpath;
  final String captextpath;
  final String withchocolatepath;
  final String cappricepath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 132.sp,
          width: 140.sp,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagepath),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 23.sp, top: 8.sp),
                child: Image.asset(
                  starsymbolpath,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.sp, top: 8.sp),
                child: Text(
                  fourpointeightpath,
                  style: TextStyle(
                    fontFamily: CoffeeShopAssetsPath.soraFont,
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                    color: whiteText,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 0.5.sp, right: 43.sp),
            child: Text(
              captextpath,
              style: TextStyle(
                fontFamily: CoffeeShopAssetsPath.soraFont,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 45.sp),
          child: Container(
            child: Text(
              withchocolatepath,
              style: TextStyle(
                  fontFamily: CoffeeShopAssetsPath.soraFont,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: darkGray2Text),
            ),
          ),
        ),
        Container(
            width: 135.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  cappricepath,
                  style: TextStyle(
                      fontFamily: CoffeeShopAssetsPath.soraFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: deepBrownText),
                ),
                SizedBox(
                  width: 30.sp,
                ),
                Image.asset(CoffeeShopAssetsPath.frame17),
              ],
            ),
          ),
      ],
    );
  }
}