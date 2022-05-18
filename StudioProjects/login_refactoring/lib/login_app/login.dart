import 'package:flutter/material.dart';
import 'package:login_refactoring/my_button/my_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(), // _ 접근제어자 private 같은 파일안에서만 접근 가능
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('image/glogo.png'),
            text: Text('Login with Google',
              style: TextStyle(color: Colors.black87,
                  fontSize: 15.0
              ),
            ),
            color: Colors.white,
            redius: 4.0,
            onPressed: () {},
          ),
          ButtonTheme(
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('image/flogo.png'),
                  Text('Login with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('image/flogo.png'),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                )
            ),
          ),
          ButtonTheme(
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email_rounded,
                    color: Colors.white,
                  ),
                  Text('Login with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('image/flogo.png'),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                )
            ),
          ),
        ],
      ),
    );
  }
}
