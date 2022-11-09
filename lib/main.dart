import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
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

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_counter % 2 == 1)
              const Text(
                'GANJIL',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                )
              ),

            if (_counter % 2 == 0)
              const Text(
                'GENAP',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                )
              ),



            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Visibility(
              visible: (_counter != 0) ? true : false,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  onPressed: (_counter != 0) ? _decrementCounter : null,
                  tooltip: 'Decrement',
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.remove),
                ),
              ),
            ),


            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            )
          ],
        ),
      )

    );
  }
}
