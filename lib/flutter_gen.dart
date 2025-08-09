import 'package:flutter/material.dart';
import 'package:icn_study/gen/assets.gen.dart';

void main() {
  runApp(MaterialApp(home: IUPageWidget()));
}

class IUPageWidget extends StatelessWidget {
  const IUPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.iu.image();
  }
}
