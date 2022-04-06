class Slot {
  String? startTime;
  String? endTime;
  bool? isAvailable;

  Slot({this.startTime, this.endTime, this.isAvailable});

  Slot.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    endTime = json['end_time'];
    isAvailable = json['is_available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['is_available'] = this.isAvailable;
    return data;
  }
}
