import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secured_line/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {
  bool _isAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          " Secured Line",
        ),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: _isAnimate ? mq.height * 0.10 : -mq.height * 0.10,
            left: _isAnimate ? mq.width * 0.25 : -mq.width * 0.25,
            width: mq.width * 0.5,
            child: Image.asset('images/splash.png'),
          ),
          Positioned(
            top: mq.height * 0.45,
            left: mq.width * 0.1,
            width: mq.width * 0.8,
            height: mq.height * 0.07,
            child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                icon: Image.asset(
                  "images/google.webp",
                  height: mq.height * 0.1,
                ),
                label: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "Signin with",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextSpan(
                      text: " Google",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))
                ]))),
          ),
        ],
      ),
    );
  }
}
