import 'dart:async';

import 'package:flutter/material.dart';
import '../models/drill.dart';

class DrillDetailsScreen extends StatefulWidget {
  final Drill drill;
  final String language;

  const DrillDetailsScreen({
    super.key,
    required this.drill,
    required this.language,
  });

  @override
  _DrillDetailsScreenState createState() => _DrillDetailsScreenState();
}

class _DrillDetailsScreenState extends State<DrillDetailsScreen> {
  bool isStarting = false; // To show countdown
  int countdown = 3; // countdown seconds
  Timer? countdownTimer;

  bool isRunning = false; // To indicate drill is ongoing
  int remainingSeconds = 0; // remaining time for drill
  Timer? drillTimer;

  @override
  void dispose() {
    countdownTimer?.cancel();
    drillTimer?.cancel();
    super.dispose();
  }

  void startCountdown() {
    setState(() {
      isStarting = true;
      countdown = 3; // reset countdown
    });
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown == 1) {
        timer.cancel();
        startDrill();
      }
      setState(() {
        countdown--;
      });
    });
  }

  void startDrill() {
    setState(() {
      isStarting = false;
      isRunning = true;
      remainingSeconds = widget.drill.duration;
    });
    drillTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingSeconds == 1) {
        timer.cancel();
        setState(() {
          isRunning = false;
        });
        // Automatically go back after a short delay
        Future.delayed(Duration(milliseconds: 500), () {
          Navigator.of(context).pop();
        });
      } else {
        setState(() {
          remainingSeconds--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final drill = widget.drill;
    final language = widget.language;

    return Scaffold(
      appBar: AppBar(
        title: Text(drill.getTitle(language)),
        backgroundColor: Colors.yellow[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              drill.getTitle(language),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              language == 'fil'
                  ? 'Kategorya: ${drill.category == "Handling" ? "Paghawak ng Bola" : drill.category == "Shooting Form" ? "Porma ng Pagbaril" : "Depensa"}'
                  : 'Category: ${drill.category}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              language == 'fil'
                  ? 'Tagal: ${drill.duration} segundo'
                  : 'Duration: ${drill.duration} seconds',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32),
            Center(
              child: Icon(
                Icons.sports_basketball,
                color: Colors.amber,
                size: 80,
              ),
            ),
            const SizedBox(height: 40),
            // Show countdown before starting
            if (isStarting)
              Center(
                child: Text(
                  '$countdown',
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                ),
              ),
            // Show round timer during drill
            if (isRunning)
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent.withOpacity(0.2),
                    border: Border.all(color: Colors.blueAccent, width: 4),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$remainingSeconds',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            // Show start button when not running or counting down
            if (!isStarting && !isRunning)
              Center(
                child: ElevatedButton(
                  onPressed: startCountdown,
                  child: Text('Start Drill'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
