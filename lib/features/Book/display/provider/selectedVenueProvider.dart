import 'package:cric8innet/features/Book/data/models/venues.dart';
import 'package:flutter/foundation.dart';

class selectedVenueProvider extends ChangeNotifier {
  Venues? selectedvenues;
  selectedVenueProvider({this.selectedvenues});
  void changeSelectedVenue(Venues venue) async {
    selectedvenues = venue;
    notifyListeners();
  }
}
