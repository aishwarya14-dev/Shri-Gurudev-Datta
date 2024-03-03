import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 156, 70),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 166, 156, 70),
        title: Text("Contacts"),
      ),
      body:  Container(
      color: const Color.fromARGB(255, 166, 156, 70),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Krishna Chalikwar",
                              style: TextStyle(
                                fontSize: 20
                              ),
                              ),
                            ),
                            // Text("Associate")
                          ],
                        ),
                        Icon(Icons.explicit_outlined)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.phone),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("+91 9088768907"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.email),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("chalikwarkrishna@gmail.com"),
                        )
                      ],
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          ),
        )  
        ],
      ),
    ),
    );
  }
}