import 'package:flutter/material.dart';
import 'views/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVC LOGIN',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        '/home': (context) => HomeView(),
      },
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Hoşgeldin !'),
      ),
    );
  }
}