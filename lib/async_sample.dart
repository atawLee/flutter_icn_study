import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:isolate';

Future<void> main() async {
  runApp(const MyApp());
  // Isolate에서 CPU 바운드 작업 실행
  startCpuBoundIsolate();
  // 기존 http 요청 예시
  await http.get(Uri.https('festa.atawlee.com', '/api/chatlobby/chatrooms'));
  runApp(const MyApp());
}

// CPU 바운드 작업을 수행하는 함수
void cpuBoundTask(SendPort sendPort) async {
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += i;
    await Future.delayed(Duration(seconds: 2));
  }
  // 2초 딜레이 추가

  sendPort.send(sum);
}

// Isolate를 시작하고 결과를 받는 함수
Future<void> startCpuBoundIsolate() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(cpuBoundTask, receivePort.sendPort);
  int result = await receivePort.first;
  print('Isolate 작업 결과: $result');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
