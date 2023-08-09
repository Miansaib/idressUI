import 'package:flutter/material.dart';

class TimePickerContainer extends StatefulWidget {
  VoidCallback onTap;
   TimeOfDay? time = null;
  String buttonName;
  Size size;
  TimePickerContainer({super.key,required this.buttonName,required this.size,required this.time,required this.onTap});

  @override
  State<TimePickerContainer> createState() => _TimePickerContainerState();
}

class _TimePickerContainerState extends State<TimePickerContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.all(8),
          height: widget.size.height * 0.07,
          width: widget.size.width * 0.95,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Color.fromARGB(255, 8, 69, 138),
              )),
          child: Center(
              child: Text(
            widget.time == null
                ? widget.buttonName
                : "${widget.time!.hour.toString()} : ${widget.time!.minute}",
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}