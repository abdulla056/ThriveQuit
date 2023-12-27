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

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    CustomSearchView(
                      width: 212.h,
                      controller: searchController,
                      hintText: "Search",
                    ),
                    SizedBox(height: 22.v),
                    _buildDiscoverRecoverySection(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
        SizedBox(height: 3.v),
        SizedBox(
          height: 386.v,
          width: 330.h,
          child: GoogleMap(
            //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                37.43296265331129,
                -122.08832357078792,
              ),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false,
          ),
        ),
      ],
    );
  }
}
