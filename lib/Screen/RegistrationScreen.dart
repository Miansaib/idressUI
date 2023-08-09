import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:idressui/Custom_Widgets/CustomTextformField.dart';
import 'package:idressui/Custom_Widgets/Divider.dart';
import 'package:idressui/Custom_Widgets/Imagepicker.dart';
import 'package:idressui/Custom_Widgets/TimePicker.dart';
import 'package:idressui/Functions/DatePicker.dart';
import 'package:idressui/Models/EventModel.dart';

import '../Functions/ImagePicker.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController eventShowcaseNameController =
      TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController eventLenghtController = TextEditingController();
  final TextEditingController amountofChipsController = TextEditingController();
  final TextEditingController levelsController = TextEditingController();
  final TextEditingController gtdController = TextEditingController();
  final TextEditingController startingChipsController = TextEditingController();
  final TextEditingController startingBlindsController =
      TextEditingController();
  final TextEditingController anteTypeController = TextEditingController();
  final TextEditingController reEntryController = TextEditingController();
  final TextEditingController bountiesController = TextEditingController();
  DateTime? date;
  TimeOfDay? startingTime, endingTime;
  TimeOfDay selectedTime = TimeOfDay.now();
  final validationKey = GlobalKey<FormState>();
  String? imageURL;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 36, 41),
        body: SingleChildScrollView(
          child: Form(
            key: validationKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    CustomImagePicker(),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                CustomDivider(size: size, text: "Touranament Info"),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                    controller: eventNameController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Please Enter Event Name',
                    keyboardType: TextInputType.name,
                    label: 'Event Name'),
                CustomTextFormField(
                    controller: eventShowcaseNameController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Please Enter Event Showcase Name',
                    keyboardType: TextInputType.name,
                    label: 'Event Showcase Name'),
                CustomTextFormField(
                    controller: priceController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Enter Price',
                    keyboardType: TextInputType.name,
                    label: 'Price'),
                CustomTextFormField(
                    controller: eventLenghtController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Lenght of Event',
                    keyboardType: TextInputType.name,
                    label: 'Event Lenght'),
                CustomTextFormField(
                    controller: amountofChipsController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Enter Amount of Chips',
                    keyboardType: TextInputType.name,
                    label: 'Amount of Chips'),
                CustomTextFormField(
                    controller: levelsController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Enter Levels',
                    keyboardType: TextInputType.name,
                    label: 'Levels'),
                CustomTextFormField(
                    controller: gtdController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Enter Gtd',
                    keyboardType: TextInputType.name,
                    label: 'Gtd'),
                CustomDivider(size: size, text: "Registration"),
                TimePickerContainer(
                  buttonName: 'Choose Starting Time',
                  size: size,
                  time: startingTime,
                  onTap: () async {
                    startingTime = await showTimePicker(
                        context: context, initialTime: selectedTime);
                    setState(() {});
                  },
                ),
                TimePickerContainer(
                  buttonName: 'Choose Ending Time',
                  size: size,
                  time: endingTime,
                  onTap: () async {
                    endingTime = await showTimePicker(
                        context: context, initialTime: selectedTime);
                    setState(() {});
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () async {
                        date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2023),
                            initialDate: DateTime.now(),
                            lastDate: DateTime(3000));
                        setState(() {});
                      },
                      child: DatePicker(
                          size: size, buttonName: 'Choose Date', date: date)),
                ),
                CustomDivider(size: size, text: "Format"),
                CustomTextFormField(
                    controller: startingChipsController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Enter Starting Chips',
                    keyboardType: TextInputType.name,
                    label: 'Starting Chips'),
                CustomTextFormField(
                    controller: startingBlindsController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Enter Starting Blinds',
                    keyboardType: TextInputType.name,
                    label: 'Starting Blinds'),
                CustomTextFormField(
                    controller: anteTypeController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Ante Type',
                    keyboardType: TextInputType.name,
                    label: 'Ante Type'),
                CustomTextFormField(
                    controller: reEntryController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: 'Re-Entry',
                    keyboardType: TextInputType.name,
                    label: 'Re-Entry'),
                CustomTextFormField(
                    controller: bountiesController,
                    formFieldValidator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter This Field";
                      } else {
                        return null;
                      }
                    },
                    hint: ' Enter Bounties',
                    keyboardType: TextInputType.name,
                    label: 'Bounties'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            if (validationKey.currentState!.validate()) {
              EventRegistrationModel obj = EventRegistrationModel(
                  eventName: eventNameController.text,
                  eventShowCaseName: eventShowcaseNameController.text,
                  price: priceController.text,
                  eventLenght: eventLenghtController.text,
                  amountofChips: amountofChipsController.text,
                  levels: levelsController.text,
                  gtd: gtdController.text,
                  startingChips: startingChipsController.text,
                  startingBlinds: startingBlindsController.text,
                  anteType: anteTypeController.text,
                  reEntry: reEntryController.text,
                  bounties: bountiesController.text,
                  date: date,
                  startingTime: startingTime!,
                  endingTime: endingTime!,
                  imageURL: imageURL);
              //call Functions here
            }
          },
          child: Container(
            height: size.height * 0.07,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 4, 61, 70),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            ),
            child: Center(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
