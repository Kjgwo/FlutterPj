import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headline3
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          counter++;
                          print('$counter');
                        });
                      }),
                  SizedBox(width: 20,),
                  FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          counter--;
                          print('$counter');
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
