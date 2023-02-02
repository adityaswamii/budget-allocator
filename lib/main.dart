import 'S1.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      /*theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: const Color.fromARGB( 255, 96, 95, 95),
        primaryColor: const Color.fromARGB(255, 40, 230, 150),

        fontFamily: 'Roboto',

        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.blueGrey),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Roboto', color: Colors.blueGrey),
        ),
      ),*/
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData(
      backgroundColor: Colors.black,
      brightness: Brightness.dark,
    );
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image.asset('assets/images/logo_budgie.jpeg'),
          const Text(
            'Budgie welcomes you',
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'JosefinSans',
              color: Color.fromARGB(255, 40, 230, 150),
            ),
          ),
          const Text(
            'to a life of financial ease',
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'JosefinSans',
              color: Color.fromARGB(255, 40, 230, 150),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25.0),
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 40, 230, 150)),
              ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstScreen()),
                  );
                },
                child: const Text(
                    'GET STARTED',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                ),
            ),
          )
      ],
      ),
    );
  }
}
