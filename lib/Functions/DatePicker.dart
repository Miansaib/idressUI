// ignore: file_names
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  DateTime? date = null;
  String buttonName;
  Size size;
  DatePicker({super.key, required this.size, required this.buttonName,this.date});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        widget.date == null
            ? widget.buttonName
            : "${widget.date!.day.toString()} : ${widget.date!.month} : ${widget.date!.year.toString()}",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
