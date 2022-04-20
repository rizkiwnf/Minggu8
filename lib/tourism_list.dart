import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementp2/api/api_service.dart';
import 'package:statemanagementp2/model/tourism_model.dart';
import 'package:statemanagementp2/provider/done_tourism_provider.dart';
import 'detail_screen.dart';
import 'list_item.dart';

class TourismList extends StatefulWidget{
  final List<TourismPlace> doneTourismPlaceList;
  const TourismList({Key? key, required this.doneTourismPlaceList}) : super(key: key);

  @override
   _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> doneTourismPlaceList;
  late Future<TourismResult> _tourism;

  void initState() {
    super.initState();
    _tourism = ApiService().topHeadlines();
  }
  @override
  Widget _buildList(BuildContext context) {
    return FutureBuilder(
      future: _tourism,
      builder: (context, AsyncSnapshot<TourismResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.tourismPlaces.length,
              itemBuilder: (context, index) {
                var place = snapshot.data?.tourismPlaces[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: place!);
                    }));
                  },
                  child: Consumer<DoneTourismProvider>(
                    builder: (context, DoneTourismProvider data, widget) {
                      return ListItem(
                        place: place!,
                        isDone: data.doneTourismPlaceList.contains(place),
                        onCheckboxClick: (bool? value) {
                          if (value != null) {
                            data.complete(place, value);
                          }
                        },
                      );
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Text('');
          }
        }
      },
    );
  }

  _TourismListState(this.doneTourismPlaceList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(context),
    );
  }
}