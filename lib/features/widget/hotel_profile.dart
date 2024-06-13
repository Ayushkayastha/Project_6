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
    Color mycolor =Color.fromARGB(255, 81, 212, 194);

    return Scaffold(

    body: Stack(
      children: [
        Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(32.0),
              child: Image.network(
                'https://via.placeholder.com/400', // Dummy image URL
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotelDetails.name[widget.index],
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    hotelDetails.price[widget.index].toString(),
                    style: TextStyle(fontSize: 20.0, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Sleeps 3 people',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 16.0),

                ],
              ),
            ),
          ],
        ),
      ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mycolor,
                        foregroundColor: Color.fromARGB(255,255,255,255),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Select Rooms',
                          style: TextStyle(
                             fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

      ],
    ),
    );
  }
}
