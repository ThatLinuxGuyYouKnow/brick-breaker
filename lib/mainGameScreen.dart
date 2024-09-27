import 'package:brickbreaker/GameManager/game-manger.dart';
import 'package:brickbreaker/game-assets/ball.dart';
import 'package:brickbreaker/game-assets/paddle.dart';
import 'package:flutter/material.dart';

class BrickBreakerGame extends StatefulWidget {
  const BrickBreakerGame({Key? key}) : super(key: key);

  @override
  State<BrickBreakerGame> createState() => _BrickBreakerGameState();
}

class _BrickBreakerGameState extends State<BrickBreakerGame> {
  late GameManager gameManager;

  double paddleX = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Ball(ballX: gameManager.ballX, ballY: gameManager.ballY),
              Paddle(paddleX: paddleX),
            ],
          ),
        ),
      ),
    );
  }
}
