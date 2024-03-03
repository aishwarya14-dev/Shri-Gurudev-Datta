
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TempleAddress extends StatefulWidget {
  const TempleAddress({super.key});

  @override
  State<TempleAddress> createState() => _TempleAddressState();
}

class _TempleAddressState extends State<TempleAddress> {

  @override
  void initState() {
    super.initState();
  }

      static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunchUrl(Uri.parse(googleUrl))) {
      try{
        await launchUrl(Uri.parse(googleUrl));
      }
      catch(e){
        print(e);
      }
    } else {
      throw 'Could not open the map.';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 156, 70),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 166, 156, 70),
        title: Text("How to reach?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom:8.0,top: 8.0,left: 8),
                    child: Text("GURUDEV DATTA MORALE MANDIR",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom:8.0,left: 8),
                    child: Text("Maharashtra, 416321",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0,left: 8),
                    child: InkWell(
                      onTap: () => openMap(17.17626,74.69162),
                      child: const Text("https://maps.app.goo.gl/HNvjUHMRLKFA8kJM6",
                                style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent,
                      fontSize: 16
                                ),
                              ),
                    ),
                  ),
                ],
              ),
            ),
          ],
            ),
        ),
      ),
    );
  }
}