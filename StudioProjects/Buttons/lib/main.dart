import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button',
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onLongPress: (){
                print('text button');
              },
              child: Text(
                'Text button',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {  },
            ),
            ElevatedButton(
              onPressed: (){
                print('Elevated button');
                },
              child: Text('Elevated button',
              style: TextStyle(
                color: Colors.yellow,
              ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
              ),
            ),
            OutlinedButton(
              onPressed: (){
                print('Outlined button');
                },
              child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,

            ),
            ),
            TextButton.icon(
                onPressed: null,
                icon: Icon(
                    Icons.home,
                size: 30.0,
                color: Colors.black87,
                ),
                label: Text('Go to home'),
              style: TextButton.styleFrom(
                primary: Colors.black,
                onSurface: Colors.pink
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20.0),
              children: [
                TextButton(
                  onLongPress: (){
                    print('text button');
                  },
                  child: Text(
                    'Text button',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {  },
                ),
                ElevatedButton(
                  onPressed: (){
                    print('Elevated button');
                  },
                  child: Text('Elevated button',
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

