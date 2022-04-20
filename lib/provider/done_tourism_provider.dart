import 'package:flutter/cupertino.dart';
import 'package:statemanagementp2/model/tourism_model.dart';

class DoneTourismProvider extends ChangeNotifier{
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

  void complete(TourismPlace place, bool isDone){
    isDone 
        ? _doneTourismPlaceList.add(place) 
        : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}