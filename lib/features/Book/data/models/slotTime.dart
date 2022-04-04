class SlotTime {
  String? slotStartTime;
  String? slotEndTime;

  SlotTime({this.slotStartTime, this.slotEndTime});

  SlotTime.fromJson(Map<String, dynamic> json) {
    slotStartTime = json['slot_start_time'];
    slotEndTime = json['slot_end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slot_start_time'] = slotStartTime;
    data['slot_end_time'] = slotEndTime;
    return data;
  }
}
