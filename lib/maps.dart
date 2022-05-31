import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(9.005401, 38.763611);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  List<Marker> markers = [];
  @override 
  void initState(){
    intilize();
    super.initState();
  }
  intilize(){
     Marker marker1 = Marker(
    markerId: MarkerId('Marker1'),
    //9.021467623673363, 38.79424205395846
    position: LatLng(9.021467623673363, 38.79424205395846),
    infoWindow: InfoWindow(title: 'For most of the ingredients '),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  );
  Marker marker2 = Marker(
    markerId: MarkerId('Marker2'),
    position: LatLng(9.027164235755313, 38.76965845554538,),
    infoWindow: InfoWindow(title: 'For meat products'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  );
   Marker marker3 = Marker(
    markerId: MarkerId('Marker2'),
    position: LatLng(9.027586763316148, 38.79297067559504),
    infoWindow: InfoWindow(title: 'For spices and vegatables ingreidents'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  );
    Marker marker4 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(9.025610839095444,38.75910569661446,),
    infoWindow: InfoWindow(title: 'For getting most of the ingredients'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  );
    Marker marker5 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(9.001284715687447, 38.81148675695845),
    infoWindow: InfoWindow(title: 'For vegetables'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  );
  markers.add(marker1);
  markers.add(marker2);
  markers.add(marker3);
  markers.add(marker4);
  markers.add(marker5);
 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Best places \n to get the ingreidents', style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    
                  ),),
          backgroundColor: Color.fromARGB(255, 238, 235, 228),
        elevation: 0,
        ),
        body: SafeArea(
          child: GoogleMap(
            onTap: (LatLng){

            },
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            markers: markers.map((e) => e).toSet(),
            

          ),
        ),
      ),
    );
  }
}
