import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';

import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              const SizedBox(width: defaultPadding / 2),
              const Text(
                "月底好夥伴",
                style: TextStyle(fontSize: 20,color: Colors.black54)
              ),
            ],
          ),
          actions: [
            IconButton(
              icon:Icon(Icons.home,size: 30,color: Colors.white70,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
             Container(
               padding: EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
              ),


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  const Text(
                    "best Outfits for you",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SearchForm(),
                  ),
                  const Categories(),
                  const NewArrivalProducts(),
                  const PopularProducts(),
                ],
              ),
             )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (index) {},
          height: 60,
          color: Colors.orangeAccent,
          items: const [
            Icon(Icons.home,size: 30,color: Colors.white70,
            ),
            Icon(CupertinoIcons.person_alt_circle_fill,size: 30,color: Colors.white70,
            ),
            Icon(CupertinoIcons.cart_fill,size: 30,color: Colors.white70,
            ),

          ],
        ),
      ),
    );
  }
}
