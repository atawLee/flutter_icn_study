import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ImplicitAnimationWidget()));
}

class ImplicitAnimationWidget extends StatefulWidget {
  const ImplicitAnimationWidget({super.key});

  @override
  State<ImplicitAnimationWidget> createState() =>
      _ImplicitAnimationWidgetState();
}

class _ImplicitAnimationWidgetState extends State<ImplicitAnimationWidget> {
  double width = 200;
  double height = 200;
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    if (width == 200) {
                      width = 300;
                      height = 300;
                      opacity = 1;
                    } else {
                      width = 200;
                      height = 200;
                      opacity = 0;
                    }
                  });
                },
                child: Text('Run Animation'),
              ),
              AnimatedContainer(
                curve: Curves.bounceInOut,
                padding: const EdgeInsets.all(8.0),
                width: width,
                height: height,
                color: Colors.blueGrey,
                duration: Duration(seconds: 2),
              ),

              AnimatedOpacity(
                opacity: opacity,
                duration: Duration(seconds: 2),
                child: Text('Opacity Test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
