import 'package:flutter/material.dart';
import 'package:food_delivary/utils/dimantions.dart';
import 'package:food_delivary/widgets/small_text.dart';

class ExpandableTextWidgets extends StatefulWidget {
  final String text;
  const ExpandableTextWidgets({super.key,required this.text});

  @override
  State<ExpandableTextWidgets> createState() => _ExpandableTextWidgetsState();
}

class _ExpandableTextWidgetsState extends State<ExpandableTextWidgets> {
  //.......When we using late variable always declire the variable and don's be null.......// 
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight/5.63;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = ""; 
    }
  }
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [ 
          SmallText(text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: Colors.blue,),
                const Icon(Icons.arrow_drop_down,color: Colors.blue,)
              ],
            ),
          )
        ],
      ),
    );
  }
}