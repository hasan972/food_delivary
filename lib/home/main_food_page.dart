import 'package:flutter/material.dart';
import 'package:food_delivary/home/food_page_body.dart';
import 'package:food_delivary/utils/dimantions.dart';
import 'package:food_delivary/widgets/big_text.dart';
import 'package:food_delivary/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Bangladesh",color: Colors.blueAccent),
                     Row(
                      children: [
                         SmallText(text: "Sirajganj",color: Colors.black54,),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                     )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: Color.fromARGB(255, 22, 141, 239),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        const FoodPageBody(),
        ],
      ),
    );
  }
}
