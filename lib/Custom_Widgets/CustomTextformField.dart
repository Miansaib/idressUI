import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hint, label;
  TextInputType keyboardType;
  FormFieldValidator formFieldValidator;

  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.keyboardType,
      required this.label,
      required this.formFieldValidator
      });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
            validator: formFieldValidator,
            keyboardType: keyboardType,
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              labelText: label,
              hintStyle: TextStyle(color: Colors.white),
              labelStyle:  TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 8, 69, 138),
                )
              )
            ),
          ),
    );
  }
}
