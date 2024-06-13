import 'package:flutter/material.dart';
import 'package:project6/backend/API/HotelDetails.dart';
import 'package:project6/features/widget/hotel_card.dart';


class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  HotelDetails hotelDetails = HotelDetails();

  @override
  Widget build(BuildContext context) {

    List<int> FavHotel=[];
    print("Hotel Count: ${hotelDetails.count}");
    for(int i=0;i<hotelDetails.count.length;i++)
    {
      if(hotelDetails.count[i])
        {FavHotel.add(i);
        }
    }
    print(FavHotel);
    return Scaffold(

      appBar: AppBar(
    title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Favorites',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),),
      ],
    ),
    ),

    );
  }
}








