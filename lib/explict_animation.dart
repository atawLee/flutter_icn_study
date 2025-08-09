
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: AnimationBuilder2())));
}

class DemoAnimationPage extends StatefulWidget {
  const DemoAnimationPage({super.key});

  @override
  State<DemoAnimationPage> createState() => _DemoAnimationPageState();
}

class _DemoAnimationPageState extends State<DemoAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    animation = Tween<double>(
      begin: 24,
      end: 80,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInBack));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: animation,
            builder: (context, child) =>
                CircleAvatar(radius: animation.value, child: Text('T')),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              if (controller.status == AnimationStatus.completed) {
                controller.reverse();
              } else {
                controller.forward();
              }
            },
            child: Text('Run'),
          ),
        ],
      ),
    );
  }
}

class AnimationBuilder2 extends StatefulWidget {
  const AnimationBuilder2({super.key});

  @override
  State<AnimationBuilder2> createState() => _AnimationBuilder2State();
}

class _AnimationBuilder2State extends State<AnimationBuilder2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween<double>(
      begin: 24,
      end: 80,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return CircleAvatar(radius: _animation.value, child: Text('T'));
              },
            ),
            TextButton(
              onPressed: () {
                if (_controller.status == AnimationStatus.completed) {
                  _controller.reverse();
                } else {
                  _controller.forward();
                }
              },
              child: Text('run'),
            ),
          ],
        ),
      ),
    );
  }
}
