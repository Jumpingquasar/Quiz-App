import 'package:flutter/material.dart';
import 'package:quiz_app/consts/images.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.changeScreen});
  final void Function(String) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Images.startScreenImage,
            height: 300,
            color: const Color.fromARGB(210, 255, 255, 255),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(210, 255, 255, 255),
              ),
            ),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.star),
            onPressed: () {
              changeScreen('questions-screen');
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              'Start Quiz!',
            ),
          )
        ],
      ),
    );
  }
}
