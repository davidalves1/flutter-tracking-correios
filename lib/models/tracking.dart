import 'package:tracking_correios/models/trackingHistory.dart';

class Tracking {
  String codigo;
  String servico;
  List<TrackingHistory> historico;

  Tracking({this.codigo, this.servico, this.historico});

  Tracking.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    servico = json['servico'];
    if (json['historico'] != null) {
      historico = new List<TrackingHistory>();
      json['historico'].forEach((v) {
        historico.add(new TrackingHistory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['servico'] = this.servico;
    if (this.historico != null) {
      data['historico'] = this.historico.map((v) => v.toJson()).toList();
    }
    return data;
  }
}