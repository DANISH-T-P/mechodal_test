import 'package:flutter/material.dart';

import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 93, 56, 56),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(24)
              ),
            ),
            const SizedBox(height: 20),
            const Text("Whats's app Direct",style: TextStyle(
              fontSize: 24,
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}