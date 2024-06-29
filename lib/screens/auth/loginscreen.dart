import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {
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
          Positioned(
            top: mq.height * 0.10,
            left: mq.width * 0.25,
            width: mq.width * 0.5,
            child: Image.asset('images/image1.jpg'),
          ),
          Positioned(
            top: mq.height * 0.45,
            left: mq.width * 0.25,
            width: mq.width * 0.5,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset("images/google.png"),
                label: const Text("Click Me")),
          ),
        ],
      ),
    );
  }
}
