import 'package:coffe_shop/logic/state.dart';
import 'package:coffe_shop/presentation/details.dart';
import 'package:coffe_shop/presentation/home.dart';
import 'package:coffe_shop/presentation/map.dart';
import 'package:coffe_shop/presentation/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoffeeCupit extends Cubit<CoffeeState> {
  CoffeeCupit() : super(const CoffeeState(counter: 0));
  Future<void> SaveCounter() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', state.counter);
  }

  Future<void> LoadCounter() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final SavedCounter = prefs.getInt('counter') ?? 0;
    emit(CoffeeState(counter: SavedCounter));
  }

  //increase
  void increasecountre() {
    final newvalue = state.counter + 1;
    emit(CoffeeState(counter: newvalue));
    SaveCounter();
  }

  //decrease
  void decreasecountre() {
    final newvalue = state.counter - 1;
    emit(CoffeeState(counter: newvalue));
    SaveCounter();
  }

  void navigatetodetails(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => details()),
    );
  }

  void navigatetoorder(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Order()),
    );
  }

  void navigatetohome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  void navigatetomap(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MapPage()),
    );
  }

  void pop(BuildContext context) {
    Navigator.pop(context);
  }
}

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false) {
    loadTheme();
  }

  void toggleTheme() async {
    final newTheme = !state;
    emit(newTheme);

    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDark", newTheme);
  }

  void loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final savedTheme = prefs.getBool("isDark") ?? false;
    emit(savedTheme);
  }
}

class SelectCubit extends Cubit<int> {
  SelectCubit() : super(0);

  void selectIndex(int index) => emit(index);
}

class SizeCubit extends Cubit<int> {
  SizeCubit() : super(0);

  void selectSize(int index) {
    emit(index);
  }
}
