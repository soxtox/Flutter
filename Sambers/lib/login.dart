import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isChecked = false;

  void _handleRememberMeChanged(bool? value) {
    setState(() {
      _isChecked = value ?? true;
    });
  }

  Future<void> _saveLoginDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('rememberMe', _isChecked);
    prefs.setString('email', _emailController.text);
    prefs.setString('password', _passwordController.text);
  }

  Future<void> _loadLoginDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isChecked = prefs.getBool('rememberMe') ?? false;
    _emailController.text = prefs.getString('email') ?? '';
    _passwordController.text = prefs.getString('password') ?? '';
  }

  @override
  void initState() {
    super.initState();
    _loadLoginDetails();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              CheckboxListTile(
                title: Text('Remember Me'),
                value: _isChecked,
                onChanged: _handleRememberMeChanged,
              ),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  _saveLoginDetails();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
}