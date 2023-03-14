import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Region extends Equatable {
  final String id, propinsi, kota, kecamatan, lat, lon;

  const Region({
    required this.id,
    required this.propinsi,
    required this.kota,
    required this.kecamatan,
    required this.lat,
    required this.lon,
  });

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      id: json['id'],
      propinsi: json['propinsi'],
      kota: json['kota'],
      kecamatan: json['kecamatan'],
      lat: json['lat'],
      lon: json['lon'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['propinsi'] = propinsi;
    data['kota'] = kota;
    data['kecamatan'] = kecamatan;
    data['lat'] = lat;
    data['lon'] = lon;
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        propinsi,
        kota,
        kecamatan,
        lat,
        lon,
      ];
}
