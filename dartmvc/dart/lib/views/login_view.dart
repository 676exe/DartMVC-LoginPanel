// lib/views/login_view.dart
import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final LoginController _loginController = LoginController();
  bool _isLoginFailed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Sayfası'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Şifre'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            if (_isLoginFailed)
              Padding(
                padding: const EdgeInsets.only(top: 16.0) ,
                child: Text(
                  'Kullanıcı Adın Veya Şifren Yanlış.',
                  style: TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (_loginController.login(username, password)) {
      // Login başarılı
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Login başarısız
      setState(() {
        _isLoginFailed = true;
      });
    }
  }
}
