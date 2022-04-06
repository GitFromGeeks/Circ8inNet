import 'package:flutter/widgets.dart';

class selectedDateProvider extends ChangeNotifier {
  DateTime? selectedDateTime;
  selectedDateProvider({this.selectedDateTime});
  void changeSelectedDate(DateTime date) async {
    selectedDateTime = date;
    notifyListeners();
  }
}
