import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HapticFeedbackPage extends StatelessWidget {
  const HapticFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Haptic Feedback')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                HapticFeedback.selectionClick();
              },
              child: const Text('Selection Feedback'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                HapticFeedback.lightImpact();
              },
              child: const Text('Light Impact'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                HapticFeedback.mediumImpact();
              },
              child: const Text('Medium Impact'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                HapticFeedback.heavyImpact();
              },
              child: const Text('Heavy Impact'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                HapticFeedback.vibrate();
              },
              child: const Text('Vibrate'),
            ),
          ],
        ),
      ),
    );
  }
}
