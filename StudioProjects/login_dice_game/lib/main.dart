import 'package:flutter/material.dart';
import 'dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Builder(
        builder:(context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Center(
                  child: Image(image: AssetImage('image/img.gif'),
                    width: 170,
                    height: 190,
                  ),
                ),
                Form(
                    child: Theme(
                      data: ThemeData(
                          primarySwatch: Colors.teal,
                          inputDecorationTheme: InputDecorationTheme(
                              labelStyle: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 15.0
                              )
                          )
                      ),
                      child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            TextField(
                              controller: controller,
                              decoration: InputDecoration(
                                  labelText: 'Enter "dice"'
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2,
                              decoration: InputDecoration(
                                  labelText: 'Enter Password'
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(
                                height: 40.0
                            ),
                            ButtonTheme(
                                minWidth: 100,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.orangeAccent
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                  onPressed: () {
                                    if(controller.text == 'dice' && controller2.text == '1234'){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (BuildContext context) => Dice()));
                                    }
                                    else if (controller.text == 'dice' && controller2.text != '1234'){
                                      showSnackBar2(context);
                                    }
                                    else if (controller.text != 'dice' && controller2.text != '1234'){
                                      showSnackBar3(context);
                                    }
                                    else {
                                      showSnackBar(context);
                                    }
                                  },
                                )
                            )
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          );
        },
      ),
    );
  }
}



void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content:
    const Text('로그인 정보를 다시 확인하세요',
      textAlign: TextAlign.center,),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ),
  );
}

void showSnackBar2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content:
    const Text('비밀번호가 일치하지 않습니다',
      textAlign: TextAlign.center,),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ),
  );
}

void showSnackBar3(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content:
    const Text('dice의 철자를 확인하세요',
      textAlign: TextAlign.center,),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ),
  );
}