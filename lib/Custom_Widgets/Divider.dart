import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  Size size;
  String text;
  CustomDivider({super.key,required this.size,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: size.height*0.035,
                width: size.width,
                color: Color.fromARGB(255, 8, 57, 102),
                child: Padding(
                    padding: const EdgeInsets.only(top: 5,left: 10),
                    child: Text(
                      text,
                      style: TextStyle(color: Color.fromARGB(255, 169, 169, 196)),
                    ),
                  ),
              );
  }
}