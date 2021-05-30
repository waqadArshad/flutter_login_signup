import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/welcomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

// class App extends StatefulWidget {
//   // Create the initialization Future outside of `build`:
//   @override
//   _AppState createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   /// The future is part of the state of our widget. We should not call `initializeApp`
//   /// directly inside [build].
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return SomethingWentWrong();
//         }
//
//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return MyApp();
//         }
//
//         // Otherwise, show something whilst waiting for initialization to complete
//         return CircularProgressIndicator();
//       },
//     );
//   }
// }
//
// class SomethingWentWrong extends StatefulWidget {
//   @override
//   _SomethingWentWrongState createState() => _SomethingWentWrongState();
// }
//
// class _SomethingWentWrongState extends State<SomethingWentWrong> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("Something Wrong"),
//     );
//   }
// }
//

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
         textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
           bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
         ),
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
