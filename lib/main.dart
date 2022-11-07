import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterWidget(),
      debugShowCheckedModeBanner: false, // disable debug banner
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _decrement() {
    if (_counter > 0) {
      setState(() {
        _counter -= 1;
      });
    }
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PreDevCamp 🔥'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Jao, March, Runrun', style: TextStyle(fontSize: 16)),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text('$_counter', style: TextStyle(fontSize: 48)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.indigo,
                    onPressed: _decrement,
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.indigo,
                    onPressed: _resetCounter,
                    child: Icon(Icons.refresh),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.indigo,
                    onPressed: _increment,
                    child: Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

/*

class BasicWidget extends StatefulWidget {
  const BasicWidget({super.key});

  @override
  State<BasicWidget> createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Button', style: TextStyle(color: Colors.white)),
          ],
        ),
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(style: BorderStyle.none),
        ),
      ),
    ));
  }
}

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  int _clickCounter = 0;

  void _increment() {
    setState(() {
      _clickCounter += 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PreDevCamp Mobile 🔥'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_clickCounter', style: TextStyle(fontSize: 64)),
            Text('Welcome to PreDevCamp Mobile !'),
            Text('Here is simple clickCounter app.'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );
  }
}

*/
