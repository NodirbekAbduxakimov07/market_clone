import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:market_clone/widget/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List fruit = [
    "frukt1.jpg",
    "frukt2.jpg",
    "frukt3.jpg",
    "frukt4.jpg",
    "fukt5.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        title: const Text("Shop",style: TextStyle(color: Colors.black),),
        actions: [
          Row(
            children: [
              Icon(Icons.search,color: Colors.black,),
              SizedBox(width: 20,),
              Icon(Icons.favorite_border,color: Colors.black,),
              SizedBox(width: 20,),
              Icon(Icons.shopping_cart_outlined,color: Colors.black,),
              SizedBox(width: 20,),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            margin: EdgeInsets.only(right: 10,left: 10,),
            width: double.maxFinite,
            height: 150,
            child: CarouselSlider.builder(
              itemCount: fruit.length,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                        image: AssetImage("assets/${fruit[itemIndex]}"),
                        fit: BoxFit.cover
                      )
                    ),
                  ), options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1
            ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/${fruit[index]}"),
                          fit: BoxFit.cover
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      ),
                      Text("Big Sale",style: TextStyle(color: Colors.black),)
                  ],
                );
            }),
          ),
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.only(top: 20,left: 10),
              child: Text("Yangi")),
          SizedBox(height: 10,),
          GridView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
            childAspectRatio: 3/5,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4),
             padding: EdgeInsets.only(right: 8,left: 8),
             itemBuilder: (context,index){
            return Container(
              child: Column(
                children: [
                  Container(
                    height: 220,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),topLeft: Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage("assets/apple.jpg"),
                    )),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0)),
                                  color: Colors.orange
                              ),
                              child: Center(child: Text("New",style: TextStyle(color: Colors.white),)),
                            ),
                            Container(),
                            Container(
                                margin: EdgeInsets.all(10.0),
                                child: Icon(Icons.favorite_border,color: Colors.redAccent,))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,decoration: BoxDecoration(color: Color(0xFFf6f6f6),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0),bottomLeft: Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Apple ")),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("\$1")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Icon(Icons.add_shopping_cart_outlined,color: Colors.black.withOpacity(0.8),),
                        ],
                      )
                  ],
                  ),)
                ],
              ),
            );
          })
        ]
        ),
      ),
    );
  }
}
