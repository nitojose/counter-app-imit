class RecentMoneySentResponse {
  String? d;
  String? t;
  String? h;
  String? dt;
  RecentMoneySentResponse({this.d, this.t});

  RecentMoneySentResponse.fromJson(Map<String, dynamic> json) {
    d = json['d']; //device id
    t = json['t']; //tag id
    h = json['h']; //health packet - random text
    dt = json['dt']; //request for system datetime - random text
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['d'] = this.d;
    data['t'] = this.t;
    return data;
  }
}