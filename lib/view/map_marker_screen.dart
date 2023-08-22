import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarkerScreen extends StatefulWidget {
  const MapMarkerScreen({super.key});

  @override
  State<MapMarkerScreen> createState() => _MapMarkerScreenState();
}

class _MapMarkerScreenState extends State<MapMarkerScreen> {
  LatLng initialLocation = const LatLng(37.422131, -122.084801);

  final List<Marker> _marker = <Marker>[
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(33.6844, 73.0479),
      infoWindow: InfoWindow(
        title: "the title of the marker",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialLocation,
          zoom: 14,
        ),
        // ToDO: add markers
      ),
    );
  }
}
