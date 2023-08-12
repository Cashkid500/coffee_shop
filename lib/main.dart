import 'package:coffee_shop/constants/asset_path.dart';
import 'package:coffee_shop/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
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
          color: Colors.black,
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: Image.asset(
                CoffeeShopAssetsPath.coffeeimage,
              ),
            ),
            Positioned(
              bottom: 70,
              left: 40.0,
              right: 20.0,
              child: SizedBox(
                width: size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80.0,
                    ),
                    SizedBox(
                      width: 260,
                      child: Text(
                        'Coffee so good, your taste buds will love it.',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: 'Sora',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 260,
                      child: Text(
                        'The best grain, the finest roast, the powerful flavor.',
                        style: TextStyle(
                            color: Color(0xffA9A9A9),
                            fontFamily: 'Sora',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
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
                        height: 54.0,
                        width: 317,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, bottom: 10),
                          child: Row(
                            children: [
                              Image.asset(CoffeeShopAssetsPath.googleimage),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
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
