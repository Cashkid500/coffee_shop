import 'package:coffee_shop/constants/asset_path.dart';
import 'package:flutter/material.dart';
import '../detail/detail.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> items = [
    "Cappuccino",
    "Machiato",
    "Latte",
    "Americano",
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
                color: Color(0xff131313),
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
                                    "Location",
                                    style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                    children: [
                                      Text(
                                        "Bilzen,Tanjungbalai",
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      ),
                                      SizedBox(width: 1), // Add some spacing between the text and image
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
                              labelText: 'Search coffee',
                              labelStyle: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff989898),
                              ),
                              prefixIcon: Image.asset(
                                CoffeeShopAssetsPath.searchImage,
                              ),
                              suffixIcon:
                                  Image.asset(CoffeeShopAssetsPath.frame10),
                              filled: true,
                              fillColor: Color(0xff313131),
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
                                  ? Color(0xffC67C4E)
                                  : Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontWeight: current == index
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                  fontSize: 14,
                                  color: current == index
                                      ? Color(0xffffffff)
                                      : Colors.black,
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
                                '4.8',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.5, right: 50.0),
                          child: Text(
                            "Cappucino",
                            style: TextStyle(
                              fontFamily: 'Sora',
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
                            "with Chocolate",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff9B9B9B)),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("\$ 4.53",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff2F4B4E)),
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
                                '4.8',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 50.0),
                          child: Text(
                            "Cappucino",
                            style: TextStyle(
                              fontFamily: 'Sora',
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
                            "with Chocolate",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff9B9B9B)),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("\$ 4.53",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff2F4B4E)),),
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
                              '4.5',
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.5, right: 50.0),
                        child: Text(
                          "Cappucino",
                          style: TextStyle(
                            fontFamily: 'Sora',
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
                          "with Chocolate",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff9B9B9B)),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("\$ 4.53",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff2F4B4E)),
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
                              '4.0',
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Container(
                        child: Text(
                          "Cappucino",
                          style: TextStyle(
                          fontFamily: 'Sora',
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
                          "with Chocolate",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff9B9B9B)),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("\$ 4.53",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xff2F4B4E)),
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
            backgroundColor: Colors.white,
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
