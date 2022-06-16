import 'dart:collection';
import 'dart:math';

import 'package:basearch/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../viewmodel/login_viewmodel.dart';

class JobLocalizationPage extends StatefulWidget {
  const JobLocalizationPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<JobLocalizationPage> createState() => _JobLocalizationPageState();
}

class _JobLocalizationPageState
    extends ModularState<JobLocalizationPage, LoginViewModel> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-15.834971, -47.912889);
  final Map<String, Marker> _markers = {};
  final Set<Circle> _circles = HashSet();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      addMarker('iesb-sul', _center, 'IESB - Campus Sul',
          'SGAS Quadra 613/614, Via L2 Sul - Asa Sul');
      addCircle('iesb-sul-circle', _center, 100);
    });
  }

  void addMarker(String id, LatLng position, String title, String snippet) {
    final iesbSulMarker = Marker(
        markerId: MarkerId(id),
        position: _center,
        infoWindow: InfoWindow(
          title: title,
          snippet: snippet,
        ));
    _markers[id] = iesbSulMarker;
  }

  void addCircle(String id, LatLng point, double radius) {
    final circle = Circle(
        circleId: CircleId(id),
        center: point,
        radius: radius,
        fillColor: Colors.blueGrey,
        strokeWidth: 3,
        strokeColor: Colors.blueAccent);
    _circles.add(circle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.dark_background,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Modular.to.navigate('/job');
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: Text(widget.title),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 14.0,
        ),
        markers: _markers.values.toSet(),
        circles: _circles,
        onLongPress: (latlng) => setState(() {
          addCircle(Random().nextInt(10000).toString(), latlng, 100);
        }),
      ),
    );
  }
}