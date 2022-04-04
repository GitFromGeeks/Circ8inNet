class SlotDate {
  String? date;
  String? day;

  SlotDate({this.date, this.day});

  SlotDate.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['day'] = day;
    return data;
  }
}
