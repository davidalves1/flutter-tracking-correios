class TrackingHistory {
  String detalhes;
  String local;
  String data;
  String situacao;

  TrackingHistory({this.detalhes, this.local, this.data, this.situacao});

  TrackingHistory.fromJson(Map<String, dynamic> json) {
    detalhes = json['detalhes'];
    local = json['local'];
    data = json['data'];
    situacao = json['situacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['detalhes'] = this.detalhes;
    data['local'] = this.local;
    data['data'] = this.data;
    data['situacao'] = this.situacao;
    return data;
  }
}
