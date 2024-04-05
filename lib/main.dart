import 'package:flutter/material.dart';
import 'package:flutter_villains/villains.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Villain(
              villainAnimation: VillainAnimation.fromBottom(
                relativeOffset: 0.4,
                from: Duration(milliseconds: 100),
                to: Duration(milliseconds: 500),
              ),
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Your content here',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Villain(
              villainAnimation: VillainAnimation.fade(
                from: Duration(milliseconds: 200),
                to: Duration(milliseconds: 800),
              ),
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.blue, Colors.blue.shade200],
                    [Colors.blue.shade200, Colors.blue.shade100],
                  ],
                  durations: [35000, 19440],
                  heightPercentages: [0.20, 0.25],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.topLeft,
                  gradientEnd: Alignment.bottomRight,
                ),
                size: Size(
                  double.infinity,
                  100.0,
                ),
                waveAmplitude: 20,
                backgroundColor: Colors.white,
                waveFrequency: 2,
                heightPercentages: [0.25, 0.30],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen or perform an action
              },
              child: Text('Navigate'),
            ),
          ],
        ),
      ),
    );
  }
}
