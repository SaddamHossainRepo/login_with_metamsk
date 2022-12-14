import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {} );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage() ,));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // child: Text('Splash screen', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          child: CircleAvatar(
            radius: 30,
            // backgroundImage: AssetImage('assets/dsl.png'),
            backgroundImage: NetworkImage('assets/dsl.png'),
            
          ),
        ),
        
      ),
    );
  }
}