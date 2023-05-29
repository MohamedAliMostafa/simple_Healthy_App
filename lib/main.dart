import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthy/Screens/HomeScreen.dart';
import 'package:healthy/Screens/IntroScreen.dart';
import 'package:healthy/StateMangement/Provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( ChangeNotifierProvider(
create: (context) => Myprovidr(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: Intro.routename,
     routes: {
       Intro.routename:(context)=>Intro(),
       Home.RouteName:(context)=>Home(),
     },
   );
  }
}
