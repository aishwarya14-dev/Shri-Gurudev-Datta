import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shri_gurudev_datta/snackbar_global.dart';
import 'package:shri_gurudev_datta/splash/splash_ui.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: Color.fromARGB(255, 166, 156, 70),
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      scaffoldMessengerKey:SnackbarGlobal.key ,
      home: SplashScreen(),
    );
  }
}