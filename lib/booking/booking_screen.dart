
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 156, 70),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 166, 156, 70),
        title: const Text("Booking"),
      ),
      body:  Container(
        child:const Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Card(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: TextField(
                        obscureText: true,
                        decoration:  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone',
                        ),
                      ),
                    ),
                ),
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: SizedBox(
            width: double.infinity,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
             ),
               ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
            width: double.infinity,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Password Again',
              ),
            ),
                ),
              ),
              Expanded(
                child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(onPressed: null, child: Text("Confirm"),
            ),
                ),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}