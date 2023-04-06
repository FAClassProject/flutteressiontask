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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 843 / 6,
              width: 1043 / 6,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                  ),
              child: Image.asset(
                'assets/images/logo_flutter_1080px_clr.png',
                scale: 15.3,
              ),
            ),
            SizedBox(
              height: 30,
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
                fontSize: 22, fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 86,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(310, 55)),
                  ),
                  onPressed: () {},
                  child: Text(
                    Textlines().third,
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              Textlines().fourth,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

