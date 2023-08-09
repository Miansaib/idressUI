import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Functions/ImagePicker.dart';
class CustomImagePicker extends StatefulWidget {
  const CustomImagePicker({super.key});

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  @override
  Widget build(BuildContext context) {

    String? imageURL='';
    Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()async{
          imageURL =   await showImagePicker(context);
                        setState(() {
                          if (kDebugMode) {
                            print(imageURL);
                          }
                        });
      },
      child: Container(
        height: size.height*0.25,
        width: size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 23, 52, 66),
        ),
        child: Center(child: imageURL==''? const Icon(Icons.photo_camera,size: 50,color: Colors.white,):Expanded(child: Image.network(imageURL!))),
      ),
    );
  }
}