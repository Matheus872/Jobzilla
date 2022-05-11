import 'package:google_maps_flutter/google_maps_flutter.dart';

class Localization {
  const Localization(this.id, this.position, this.title, this.snippet);

  final String? id;
  final LatLng? position;
  final String? title;
  final String? snippet;

  factory Localization.fromJson(Map<String, dynamic> json) => Localization(
      json['id'], json['position'], json['title'], json['snippet']);
}
