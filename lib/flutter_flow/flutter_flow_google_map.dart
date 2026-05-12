import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

export 'package:google_maps_flutter/google_maps_flutter.dart';

enum GoogleMarkerColor { violet, red, green, orange, blue }

enum GoogleMapStyle { standard, silver, retro, dark, night, aubergine }

class FlutterFlowGoogleMap extends StatelessWidget {
  const FlutterFlowGoogleMap({
    super.key,
    this.controller,
    this.onCameraIdle,
    this.initialLocation,
    this.markerColor,
    this.mapType = MapType.normal,
    this.style,
    this.initialZoom = 12,
    this.allowInteraction = true,
    this.allowZoom = true,
    this.showZoomControls = false,
    this.showLocation = false,
    this.showCompass = false,
    this.showMapToolbar = false,
    this.showTraffic = false,
    this.centerMapOnMarkerTap = true,
    this.mapTakesGesturePreference = false,
  });

  final dynamic controller;
  final ValueChanged<LatLng>? onCameraIdle;
  final LatLng? initialLocation;
  final GoogleMarkerColor? markerColor;
  final MapType mapType;
  final GoogleMapStyle? style;
  final double initialZoom;
  final bool allowInteraction;
  final bool allowZoom;
  final bool showZoomControls;
  final bool showLocation;
  final bool showCompass;
  final bool showMapToolbar;
  final bool showTraffic;
  final bool centerMapOnMarkerTap;
  final bool mapTakesGesturePreference;

  @override
  Widget build(BuildContext context) {
    final location = initialLocation ?? const LatLng(40.7128, -74.0060);
    return GoogleMap(
      initialCameraPosition: CameraPosition(target: location, zoom: initialZoom),
      mapType: mapType,
      zoomGesturesEnabled: allowInteraction && allowZoom,
      scrollGesturesEnabled: allowInteraction,
      rotateGesturesEnabled: allowInteraction,
      tiltGesturesEnabled: allowInteraction,
      zoomControlsEnabled: showZoomControls,
      myLocationEnabled: showLocation,
      compassEnabled: showCompass,
      mapToolbarEnabled: showMapToolbar,
      trafficEnabled: showTraffic,
      markers: {
        Marker(
          markerId: const MarkerId('initial-location'),
          position: location,
        ),
      },
      onCameraIdle: () => onCameraIdle?.call(location),
    );
  }
}
