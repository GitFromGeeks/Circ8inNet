class SlotsInADate {
  String? date;
  List<Slots>? slots;
  String? slotOver;
  String? day;
  String? price;

  SlotsInADate({this.date, this.slots, this.slotOver, this.day, this.price});

  SlotsInADate.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['slots'] != null) {
      slots = <Slots>[];
      json['slots'].forEach((v) {
        slots!.add(Slots.fromJson(v));
      });
    }
    slotOver = json['slot_over'];
    day = json['day'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    if (slots != null) {
      data['slots'] = slots!.map((v) => v.toJson()).toList();
    }
    data['slot_over'] = slotOver;
    data['day'] = day;
    data['price'] = price;
    return data;
  }
}

class Slots {
  String? startTime;
  String? endTime;
  bool? isAvailable;

  Slots({this.startTime, this.endTime, this.isAvailable});

  Slots.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    endTime = json['end_time'];
    isAvailable = json['is_available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['is_available'] = isAvailable;
    return data;
  }
}
