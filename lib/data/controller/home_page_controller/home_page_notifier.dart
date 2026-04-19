import 'package:flutter/material.dart';
import 'package:muslim_mate/data/controller/home_page_controller/home_page_state.dart';
import 'package:riverpod/legacy.dart';

class HomePageNotifier extends StateNotifier<HomePageState>{
  HomePageNotifier():super(HomePageState());

    Future<void> pickTime(context) async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null) {
      // setState(() {
      //   selectedTime = time;
      // });
      state=state.copyWith(selectedTime: time);
    }
  }
}

final homePageProvider=StateNotifierProvider<HomePageNotifier,HomePageState>((ref){
return HomePageNotifier();
});