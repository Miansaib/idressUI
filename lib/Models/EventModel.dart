import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EventRegistrationModel {
  String eventName,
      eventShowCaseName,
      price,
      eventLenght,
      amountofChips,
      levels,
      gtd,
      startingChips,
      startingBlinds,
      anteType,
      reEntry,
      bounties;

  DateTime? date;
  TimeOfDay startingTime, endingTime;
  String? imageURL;
  EventRegistrationModel(
      {required this.eventName,
      required this.eventShowCaseName,
      required this.price,
      required this.eventLenght,
      required this.amountofChips,
      required this.levels,
      required this.gtd,
      required this.startingChips,
      required this.startingBlinds,
      required this.anteType,required this.reEntry,
      required this.bounties,
      required this.date,
      required this.startingTime,
      required this.endingTime,
      required this.imageURL,});

  Map<String, dynamic> toMap() {
    return {
      'EventName': eventName,
      'EventFullName': eventShowCaseName,
      'EventPrice': price,
      'EventLenght': eventLenght,
      'AmountofChips': amountofChips,
      'Levels': levels,
      'GTD': gtd,
      'StartingChips': startingChips,
      'StaringBlinds': startingBlinds,
      'AnteType': anteType,
      'ReEntry': reEntry,
      'Bounties': bounties,
      'EventDate': date,
      'EventStartingTime': startingTime,
      'EventEndingTime': endingTime,
      'imageURL': imageURL,
    };
  }

  // Create a new Product instance from a Firestore document snapshot
  static EventRegistrationModel fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return EventRegistrationModel(
      eventName: data['EventName'] as String,
      eventShowCaseName: data['EventFullName'] as String,
      price: data['EventPrice'] as String,
      eventLenght: data['EventLenght'] as String,
      amountofChips: data['AmountofChips'] as String,
            levels: data['Levels'] as String,
      gtd: data['GTD'] as String,
      startingChips: data['StartingChips'] as String,
      startingBlinds: data['StaringBlinds'] as String,
      anteType: data['AnteType'] as String,
            reEntry: data['ReEntry'] as String,
      bounties: data['Bounties'] as String,
      date: data['EventDate'] as DateTime,
      startingTime: data['EventStartingTime'] as TimeOfDay,
      endingTime: data['EventEndingTime'] as TimeOfDay,
            imageURL: data['imageURL'] as String,
    );
  }
}
