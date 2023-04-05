import 'package:flutter/material.dart';
import 'texts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/flutter_logo.png',
            scale: 2.3,
          ),
          Text(
            Textlines().first,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 42,
              wordSpacing: -10,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            Textlines().second,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(240, 40)),
            ),
            onPressed: () {},
            child: Text(
              Textlines().third,
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 110),
          Text(
            Textlines().fourth,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}

