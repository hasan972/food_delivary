import 'package:flutter/material.dart';
import 'package:food_delivary/utils/dimantions.dart';
import 'package:food_delivary/widgets/small_text.dart';

class ExpandableTextWidgets extends StatefulWidget {
  final String text;
  const ExpandableTextWidgets({super.key, required this.text});

  @override
  State<ExpandableTextWidgets> createState() => _ExpandableTextWidgetsState();
}

class _ExpandableTextWidgetsState extends State<ExpandableTextWidgets> {
  //.......When we using late variable always declire the variable and don's be null.......//
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText( color: Colors.black54,size: Dimensions.font16, text: firstHalf)
          : Column(
              children: [
                //........hiddenText is true first time when the hiddentext become false than second part is working.......//
                SmallText(
                  height: 1.8,
                  color: Colors.black54,
                    size: Dimensions.font16,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: Colors.blue,
                      ),
                      //......if hiddenText is true show the icon otherwise don't show the icon.....//
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
