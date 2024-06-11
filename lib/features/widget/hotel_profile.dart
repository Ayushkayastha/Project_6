import 'package:flutter/material.dart';
import 'package:project6/backend/API/HotelDetails.dart';

class HotelProfile extends StatefulWidget {
  final int index;
  const HotelProfile({Key? key,required this.index}) : super(key: key);

  @override
  State<HotelProfile> createState() => _HotelProfileState();
}

class _HotelProfileState extends State<HotelProfile> {
  HotelDetails hotelDetails = HotelDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Expanded(
          child: Text(hotelDetails.name[widget.index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      ),

    );
  }
}
