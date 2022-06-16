import 'dart:ffi';

import 'package:basearch/src/features/auth/domain/model/localization.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocalizationDto {
  const LocalizationDto(this.id, this.position, this.title, this.snippet);

  final String? id;
  final String? position;
  final String? title;
  final String? snippet;

  factory LocalizationDto.fromDomain(Localization localization) {
    return LocalizationDto(localization.id, localization.position.toString(),
        localization.title, localization.snippet);
  }

  factory LocalizationDto.fromJson(Map<String, dynamic> json) =>
      LocalizationDto(
          json['id'], json['position'], json['title'], json['snippet']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'position': position, 'title': title, 'snippet': snippet};

  Localization toDomain() {
    List<String> coordenates = position!.split(',');
    LatLng newposition =
        LatLng(double.parse(coordenates[0]), double.parse(coordenates[1]));
    Localization localization = Localization(id, newposition, title, snippet);
    return localization;
  }
}
