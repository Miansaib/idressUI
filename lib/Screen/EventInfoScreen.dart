import 'package:flutter/material.dart';
import 'package:idressui/Custom_Widgets/CustomText.dart';
import 'package:idressui/Custom_Widgets/Divider.dart';
import 'package:idressui/Custom_Widgets/EventInfoText.dart';
import 'package:idressui/Custom_Widgets/ShareButton.dart';
import 'package:intl/intl.dart';

import '../Functions/DateFormatter.dart';
import '../Models/EventModel.dart';

class EventInfoScreen extends StatefulWidget {
  final EventRegistrationModel obj;
  const EventInfoScreen({super.key, required this.obj});

  @override
  State<EventInfoScreen> createState() => _EventInfoScreenState();
}

class _EventInfoScreenState extends State<EventInfoScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 35, 63),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: Stack(
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                    width: size.width,
                    child: Image.network(
                      widget.obj.imageURL!,
                      height: size.height * 0.3,
                      width: size.width,
                      fit: BoxFit.cover,
                      //loadingBuilder: (context, child, loadingProgress) => Center(child: CircularProgressIndicator()),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18.0, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        ShareButton(size: size, onTap: () {})
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'No Limit Hol\'dem',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  CustomText(text: formatDate(DateTime.now()))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '\$ 2000',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 157, 161, 192),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomDivider(size: size, text: "Touranament Info"),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText: widget.obj.eventName,
              title: "Event Name",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText: widget.obj.eventLenght,
              title: "Lenght of Event",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText: widget.obj.amountofChips,
              title: "Chips",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText: widget.obj.levels,
              title: "Levels",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText: widget.obj.gtd,
              title: "Gtd",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            CustomDivider(size: size, text: "Registration"),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText:
                  "${widget.obj.startingTime.hour}: ${widget.obj.startingTime.minute}",
              title: "Start Time",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText:
                 "${widget.obj.endingTime.hour}: ${widget.obj.endingTime.minute}",
              title: "End Time",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            CustomDivider(size: size, text: "Format"),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText:
                  widget.obj.startingChips,
              title: "Start Chips",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText:
                  widget.obj.startingBlinds,
              title: "Start Blinds",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText:
                  widget.obj.anteType,
              title: "Ante Type",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText:
                  widget.obj.reEntry,
              title: "Re-Entry",
              size: size,
            ),
            SizedBox(
              height: 10,
            ),
            EventInfoText(
              contentText:
                  widget.obj.bounties,
              title: "Bounties",
              size: size,
            ),
          ],
        ),
      ),
    );
  }
}
