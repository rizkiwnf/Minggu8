import 'package:flutter/material.dart';
import 'package:statemanagementp2/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  //Part 2
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      Text(place.kalender),
                    ],
                  ),
                  Column(
                    children:  <Widget>[
                      const Icon(Icons.access_time),
                      Text(place.clock),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.attach_money),
                      Text(place.price),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child : Text(
                place.deskripsi,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                    ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(place.imageAsset2,height: 155,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(place.imageAsset3,height: 155,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(place.imageAsset4,height: 155,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(place.imageAsset5,height: 155,),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}