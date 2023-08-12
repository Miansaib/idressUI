import 'package:flutter/material.dart';
import 'package:idressui/Models/EventModel.dart';
import 'package:idressui/Screen/EventInfoScreen.dart';
import 'package:idressui/Screen/RegistrationScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()));
              },
              child: Text('Registration Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                EventRegistrationModel obj = EventRegistrationModel(
                    eventName: 'eventName',
                    eventShowCaseName: 'eventShowCaseName',
                    price: 'price',
                    eventLenght: 'eventLenght',
                    amountofChips: 'amountofChips',
                    levels: 'levels',
                    gtd: 'gtd',
                    startingChips: 'startingChips',
                    startingBlinds: 'startingBlinds',
                    anteType: 'anteType',
                    reEntry: 'reEntry',
                    bounties: 'bounties',
                    date: DateTime.now(),
                    startingTime: TimeOfDay.now(),
                    endingTime: TimeOfDay.now(),
                    imageURL:
                        'https://www.telegraph.co.uk/content/dam/betting/Better-Collective/8-Classic.jpg');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EventInfoScreen(
                              obj: obj,
                            )));
              },
              child: Text('Event Info Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
