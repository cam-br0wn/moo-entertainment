import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() => runApp(MooEntertainmentApp());

class MooEntertainmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Moo Entertainment will be with you soon...",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: MooAnimation(),
      ),
    );
  }
}

class MooAnimation extends StatefulWidget {
  @override
  _MooAnimationState createState() => _MooAnimationState();
}

class _MooAnimationState extends State<MooAnimation> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  double dx = 1.0;
  double dy = 1.0;
  late double posX, posY; // Starting position of the cow emoji.
  final double speed = 2.0; // Speed of the cow emoji.

  @override
  void initState() {
    super.initState();
    posX = Random().nextDouble() * 300;
    posY = Random().nextDouble() * 300;
    controller = AnimationController(
      duration: const Duration(milliseconds: 16), // 60 FPS
      vsync: this,
    )..addListener(_updatePosition);
    controller.repeat();
  }

  void _updatePosition() {
    // Get the size of the current context
    final size = context.size;
    if (size != null) {
      // Update position based on speed and direction
      posX += dx * speed;
      posY += dy * speed;

      // Reflect off the walls when colliding
      if (posX < 0 || posX > size.width - 80) { // 80 is the approximate width of the emoji
        dx = -dx;
      }
      if (posY < 0 || posY > size.height - 80) { // 80 is the approximate height of the emoji
        dy = -dy;
      }
    }
    setState(() {}); // Update the UI
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: posX,
          top: posY,
          child: GestureDetector(
            onTap: () {
              // Change direction on tap
              dx = -dx;
              // dy = -dy;
            },
            child: const Text('🐄', style: TextStyle(fontSize: 80)),
          ),
        ),
      ],
    );
  }
}
