import 'package:flutter/material.dart';
import 'package:food_delivary/widgets/big_text.dart';
import 'package:food_delivary/widgets/icon_and_text_widgets.dart';
import 'package:food_delivary/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.amber,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

//..............If i want a child container tate a size inside a parense container than using Stack......//
  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food-1.jpg"))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chienes Side"),
                SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                        children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                    )),
                    SizedBox(width: 10,),
                    SmallText(text: "4.5"),
                    SizedBox(width:10,),
                    SmallText(text: "1287"),
                    SizedBox(width: 10,),
                    SmallText(text: "Comments")

                  ],
                ),
                SizedBox(height: 20,),
                Row(children: [
                  IconAndTextWidget(icon: Icons.circle_sharp, text: "Normal", iconColor: Colors.amber),
                   IconAndTextWidget(icon: Icons.location_on, text: "1.7km", iconColor: Colors.blue),
                    IconAndTextWidget(icon: Icons.access_time_rounded, text: "32min", iconColor: Colors.amber)
                ],)
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
