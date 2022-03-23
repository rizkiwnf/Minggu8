import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementp2/done_list_item.dart';
import 'package:statemanagementp2/model/tourism_place.dart';
import 'package:statemanagementp2/provider/done_tourism_provider.dart';

class DoneTourismList extends StatelessWidget{
  const DoneTourismList({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Telah Dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = doneTourismPlaceList[index];
          return InkWell(
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return DoneListItem(
                  place: place,
                  isDone: data.doneTourismPlaceList.contains(place),
                );
              },
            ),
          );
          // return Card(
          //   color: Colors.white60,
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text(
          //         place.name,
          //         style: const TextStyle(fontSize: 16.0),
          //       ),
          //       const Icon(Icons.done_outline),
          //     ],
          //   ),
          // );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}