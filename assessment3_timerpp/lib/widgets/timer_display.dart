import 'package:flutter/material.dart';
import 'dart:async';

class CountUpTimer extends StatefulWidget {
  const CountUpTimer({super.key});

  @override
  State<CountUpTimer> createState() => _CountUpTimerState();
}

class _CountUpTimerState extends State<CountUpTimer> {
  late Timer _timer;
  int _seconds = 0;
  bool _isRunning = false;

  void _startTimer() {
    if (!_isRunning) {
      _isRunning = true;
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          _seconds++;
        });
      });
    }
  }

  void _pauseTimer() {
    if (_isRunning) {
      _isRunning = false;
      _timer.cancel();

      final totalSeconds = _formatTime(_seconds);
      Navigator.of(context).pop(totalSeconds);
    }
  }

  void _resetTimer() {
    _pauseTimer();
    setState(() {
      _seconds = 0;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    final hours = (seconds ~/ 3600).toString().padLeft(2, '0');
    final minutes = ((seconds % 3600) ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$secs";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _formatTime(_seconds),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _startTimer,
                  child: Text('Play'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _pauseTimer,
                  child: Text('Pause'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _resetTimer,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
