import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _RegsiterScreenState();
}

class _RegsiterScreenState extends State<LoginScreen> {

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
        title:const Text("Login"),
      ),
      body:  Container(
        child: const Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Center(
            child: Card(
              child:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  Expanded(
                    child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(onPressed: null, child: Text("Register"),
                ),
                    ),
                  )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}