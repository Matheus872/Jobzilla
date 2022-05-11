import 'package:basearch/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../domain/model/localization.dart';
import '../../viewmodel/job_localization_viewmodel.dart';

class JobLocalizationPage extends StatefulWidget {
  const JobLocalizationPage({Key? key, required this.title, required this.id})
      : super(key: key);

  final int id;
  final String title;

  @override
  State<JobLocalizationPage> createState() => _JobLocalizationPageState();
}

class _JobLocalizationPageState
    extends ModularState<JobLocalizationPage, JobLocalizationViewModel> {
  late GoogleMapController mapController;
  final _viewModel = JobLocalizationViewModel();
  //final Future<Localization> localization = _viewModel.getLocalization(widget.id);
  final LatLng _center = const LatLng(-15.834971, -47.912889);

  final localization = Localization('iesb-sul', LatLng(-15.834971, -47.912889),
      'IESB - Campus Sul', 'SGAS Quadra 613/614, Via L2 Sul - Asa Sul');

  final Map<String, Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      addMarker('iesb-sul', _center, 'IESB - Campus Sul',
          'SGAS Quadra 613/614, Via L2 Sul - Asa Sul');
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
      ),
    );
  }
}
