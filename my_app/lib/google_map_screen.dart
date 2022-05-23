import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {

  Set<Marker> _markers = {};
  Set<Marker> _markers2 = {};
  Set<Marker> _markers3 = {};
  Set<Marker> _markers4 = {};

  void _onMapCreated(GoogleMapController controller)
  {
    setState(() {
      _markers.add(
        Marker(markerId: MarkerId('id-1'),
        position: LatLng(13.6920054,-89.139999),
        infoWindow: InfoWindow(
          title: 'Sucursal 1',
          snippet: 'Soyapango',
        )
         )
      );
        
        _markers.add(
        Marker(markerId: MarkerId('id-2'),
        position: LatLng(13.7013318,-89.2266226),
        infoWindow: InfoWindow(
          title: 'Sucursal 2',
          snippet: 'Salvador del Mundo',
        )
         )
      );

      _markers.add(
        Marker(markerId: MarkerId('id-3'),
        position: LatLng(13.6997322,-89.2003444),
        infoWindow: InfoWindow(
          title: 'Sucursal 3',
          snippet: 'Calle Arce',
        )
         )
      );

      _markers.add(
        Marker(markerId: MarkerId('id-4'),
        position: LatLng(13.6845021,-89.19379),
        infoWindow: InfoWindow(
          title: 'Sucursal 4',
          snippet: 'San Jacinto',
        )
         )
      );


      

    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map',),
      ),
      body: GoogleMap(
        onMapCreated:_onMapCreated ,
        markers: _markers,
        initialCameraPosition: CameraPosition(
          target:LatLng(13.6920054,-89.139999),
          zoom: 15,
           ),
      ),
    );
  }
}