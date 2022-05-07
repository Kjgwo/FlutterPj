import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled4/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to My app',
          body: 'This is the first page '
                'We are making on-boarding screens'
                'It is very interesting',
          image: Image.asset('image/page1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to My app',
          body: 'This is the Second page '
              'We are making on-boarding screens'
              'It is very interesting',
          image: Image.asset('image/page2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to My app',
          body: 'This is the Third page '
              'We are making on-boarding screens'
              'It is very interesting',
          image: Image.asset('image/page3.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
         builder: (context) => const MyPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: const Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        ),
        activeColor: Colors.red,
      ),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration(){
    return PageDecoration(
      titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: const TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.orange,
    );
  }
}
