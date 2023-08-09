import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  Size size;
  String text;
  CustomDivider({super.key,required this.size,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: size.height*0.03,
                width: size.width,
                color: Color.fromARGB(255, 4, 61, 70),
                child: Padding(
                    padding: const EdgeInsets.only(top: 5,left: 10),
                    child: Text(
                      text,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
              );
  }
}