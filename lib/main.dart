import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'package:flutter_villains/villains/villains.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: Villain(
          villainAnimation: VillainAnimation.fade(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Waves!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Villain(
                villainAnimation: VillainAnimation.fromBottom(
                  relativeOffset: 0.4,
                  from: Duration(milliseconds: 200),
                  to: Duration(milliseconds: 800),
                ),
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      [Colors.red, Colors.pinkAccent],
                      [Colors.redAccent, Colors.deepOrange],
                      [Colors.orange, Colors.yellowAccent]
                    ],
                    durations: [6000, 4000, 3000],
                    heightPercentages: [0.20, 0.23, 0.26, 0.30],
                    blur: MaskFilter.blur(BlurStyle.solid, 10),
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight,
                  ),
                  backgroundColor: Colors.white,
                  size: Size(double.infinity, 500),
                  waveAmplitude: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Villain(
        villainAnimation: VillainAnimation.fade(),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              'Wlcome to the my first flutter project',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}