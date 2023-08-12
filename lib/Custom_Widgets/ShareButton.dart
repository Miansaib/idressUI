import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  final VoidCallback onTap;
  final Size size;
  const ShareButton({super.key,required this.size,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height*0.05,
        width: size.height*0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromARGB(255, 104, 202, 155)
        ),
        child: Center(child: Icon(Icons.share,color: Colors.white,)),
      ),
    );
  }
}