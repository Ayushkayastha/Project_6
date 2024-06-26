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

    body:
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount:FavHotel.length,
        itemBuilder: (context,index){
          int favIndex = FavHotel[index];
          return

            HotelCard(
              index: favIndex,
              imageUrl: 'https://via.placeholder.com/150',
              name: hotelDetails.name[favIndex],
              location: hotelDetails.address[favIndex],
              distance: '2 km to city',
              price: hotelDetails.price[favIndex].toString(),
              reviews: '80 Reviews',
              rating: hotelDetails.hotelRatings[favIndex],
              hotelDetails: hotelDetails,
            );

        },
      ),
    ),
    );
  }
}








