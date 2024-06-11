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
      appBar: AppBar(title: Expanded(
          child: Text(hotelDetails.name[widget.index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      ),


    body: Padding(
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
                  'Deluxe Room',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  '\$220 /per night',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[700]),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Sleeps 3 people',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Book now',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mycolor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Room details'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey[700], // Text color
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
