import 'package:flutter/material.dart';

class HomePageState {

final TimeOfDay? selectedTime;  
HomePageState({this.selectedTime});
HomePageState copyWith({TimeOfDay?selectedTime}){
  return HomePageState(selectedTime: selectedTime??this.selectedTime);
}
}