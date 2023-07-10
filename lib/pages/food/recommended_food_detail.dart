import 'package:flutter/material.dart';
import 'package:food_delivary/pages/home/main_food_page.dart';
import 'package:food_delivary/utils/dimantions.dart';
import 'package:food_delivary/widgets/app_icon.dart';
import 'package:food_delivary/widgets/big_text.dart';
import 'package:food_delivary/widgets/expandable_text_widget.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: CustomScrollView(
        
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            automaticallyImplyLeading: false,
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const MainFoodPage()),
                    );
                  },
                  child:const AppIcon(icon: Icons.clear),
                ),
                const AppIcon(icon: Icons.shopping_cart_checkout),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(size: Dimensions.font26, text: "Chinese Side"),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.black26,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food-2.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: const ExpandableTextWidgets(
                      text:
                          "Craving a light and refreshing salad but bored of the same mixed greens salad? Well, if you are looking for some major salad inspiration, the you have come to the right place. We are sharing this collection of our 40 best and most popular salad recipes so that you don't have to look any further when wondering how to make the best salad,Craving a light and refreshing salad but bored of the same mixed greens salad? Well, if you are looking for some major salad inspiration, the you have come to the right place. We are sharing this collection of our 40 best and most popular salad recipes so that you don't have to look any further when wondering how to make the best salad,Craving a light and refreshing salad but bored of the same mixed greens salad? Well, if you are looking for some major salad inspiration, the you have come to the right place. We are sharing this collection of our 40 best and most popular salad recipes so that you don't have to look any further when wondering how to make the best salad,Craving a light and refreshing salad but bored of the same mixed greens salad? Well, if you are looking for some major salad inspiration, the you have come to the right place. We are sharing this collection of our 40 best and most popular salad recipes so that you don't have to look any further when wondering how to make the best salad,Craving a light and refreshing salad but bored of the same mixed greens salad? Well, if you are looking for some major salad inspiration, the you have come to the right place. We are sharing this collection of our 40 best and most popular salad recipes so that you don't have to look any further when wondering how to make the best salad,Craving a light and refreshing salad but bored of the same mixed greens salad? Well, if you are looking for some major salad inspiration, the you have come to the right place. We are sharing this collection of our 40 best and most popular salad recipes so that you don't have to look any further when wondering how to make the best salad,Craving a light and refreshing salad but bored of the same mixed greens salad? Well, if you are looking for some major salad inspiration, the you have come to the right place. We are sharing this collection of our 40 best and most popular salad recipes so that you don't have to look any further when wondering how to make the best salad"),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: Colors.blue,
                    icon: Icons.remove),
                BigText(
                  color: Colors.black26,
                  text: " \$12.88 " + " X " + " 0 ",
                  size: Dimensions.font20,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: Colors.blue,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
            height: 117,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                //color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child:Icon( Icons.favorite,color:Colors.blue)
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.blue),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
