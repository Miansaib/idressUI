import 'package:flutter/material.dart';
import 'package:idressui/Custom_Widgets/CustomText.dart';

class EventInfoText extends StatelessWidget {
  final Size size;
  final String title,contentText;
  const EventInfoText({super.key,required this.contentText,required this.title,required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,top: 10,),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text:title),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SizedBox(
              width: size.width*0.6,
              child: CustomText(text: contentText)),
            SizedBox(
              width: size.width*0.6,
              child: Expanded(
                child: Divider(
                  color: Color.fromARGB(255, 8, 57, 102),
                  thickness: 3,
                ),
              ),),
              Container()
          ],)
        ],
      ),
    );
  }
}