import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shri_gurudev_datta/booking/booking_screen.dart';
import 'package:shri_gurudev_datta/contacts/contacts_screen.dart';
import 'package:shri_gurudev_datta/login/login_view.dart';
import 'package:shri_gurudev_datta/register/register_screen.dart';

import '../how_to_reach/how_to_reach_screen.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 166, 156, 70),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            height: 150,
            color: const Color.fromARGB(255, 166, 156, 70),
          ),
           Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            alignment: Alignment.bottomCenter,
            height:MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child:  Card(
               shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
            color: const Color.fromARGB(255, 247, 244, 220),
            child: Center(
            child: GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen())),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                  child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child:const Center(child: Text("Login",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen())),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child:const Center(child: Text("Register",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactsScreen())),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                  child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child:const Center(child: Text("Contacts",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> TempleAddress())),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                  child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child:const Center(child: Text("How to Reach?",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
               onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingScreen())),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                  child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child:const Center(child: Text("Booking",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  )),
                ),
                    ),
                  ),
                ),
              ),
            ),
            ],
          )
                    ),
            ),
          ),
        ),      
        ],
      ),
    ) ;
  }
}

