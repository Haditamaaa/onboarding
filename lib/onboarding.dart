import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPage();
}

class _OnboardPage extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      bodyTextStyle: TextStyle(fontSize: 14, color: Color(0xFF4E4E4E)),
      bodyPadding: EdgeInsets.all(16)
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Beribadah menjadi lebih mudah dan praktis',
          body: 'Ibadah kepada tuhan dengan menggunakan sistem yang memudahkan pengguna.',
          image: Center(
              child: Image.asset("images/board1.png")),
          decoration: pageDecoration
        ),
        PageViewModel(
            title: 'Tingkatkan Pahalamu',
            body: 'akan ada banyak fitur yang dapat membantu kamu meraih ridho allah',
            image: Center(child: Image.asset("images/board2.png")),
            decoration: pageDecoration
        ),
        PageViewModel(
            title: 'Menemukan masjid terdekat dari lokasi anda',
            body: 'Dapat membantu anda menemukan masjid terdekat dengan lokasi anda.',
            image: Center(
                child: Image.asset("images/board3.png")),
            decoration: pageDecoration,
          footer: ElevatedButton(
            onPressed: (){

            },
            child: const Icon(Icons.arrow_forward_ios),
          )
        ),
      ],
      onDone: () {

      },
      showSkipButton: false,
      showNextButton: false,
      showDoneButton: true,
      showBackButton: false,
      done: const Icon(Icons.arrow_forward_ios),
      dotsDecorator: const DotsDecorator(
        size: Size(20,20),
        color: Colors.white,
        activeSize: Size(24,12),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))
        )
      ),
    );
  }
}