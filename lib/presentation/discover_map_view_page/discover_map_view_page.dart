import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DiscoverMapViewPage extends StatefulWidget {
  const DiscoverMapViewPage({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverMapViewPageState createState() => DiscoverMapViewPageState();
}

class DiscoverMapViewPageState extends State<DiscoverMapViewPage>
    with AutomaticKeepAliveClientMixin<DiscoverMapViewPage> {
  TextEditingController searchController = TextEditingController();

  //Completer<GoogleMapController> mapController = Completer();

  GoogleMapController? mapController;

  final Set<Marker> _locationMarkers = Set<Marker>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    // CustomSearchView(
                    //   width: 212.h,
                    //   controller: searchController,
                    //   hintText: "Search",
                    // ),
                    SizedBox(height: 22.v),
                    _buildDiscoverRecoverySection(context),
                  ],
                ),
              ),
            ],
          );
  }

  /// Section Widget
  Widget _buildDiscoverRecoverySection(BuildContext context) {
    return Column(
      children: [
        Text(
          "Discover Recovery Campaigns and Rehab Centers",
          style: CustomTextStyles.labelLargeDMSansGray600,
        ),
        SizedBox(height: 15.v),
        Container(
          height: 440.v,
          width: 330.h,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                3.0648,
                101.616,
              ),
              zoom: 14,
            ),
            onMapCreated: _onMapCreated,
             myLocationButtonEnabled: true,
             myLocationEnabled: true,
             markers: _locationMarkers,
          ),
        ),
      ],
    );
  }


  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;

      // Add markers to the map
      _addMarker(LatLng(3.1722596082070345, 101.66640681656379), 'Solace Asia', 'Solace Asia is a Malaysian-based drug and alcohol rehab and was the first of its type to be established in Malaysia.');
      _addMarker(LatLng(3.0658, 101.626), 'Rehab Center 1', 'Its a really good rehab center');
      _addMarker(LatLng(3.0638, 101.606), 'Recovery Program 2', 'Its a really good recovery program');
    });
  }

  void _addMarker(LatLng position, String markerId, String description) {
    final Marker marker = Marker(
      markerId: MarkerId(markerId),
      position: position,
      infoWindow: InfoWindow(
        title: markerId,
        snippet: description,
      ),
    );

    setState(() {
      _locationMarkers.add(marker);
    });
  }
}