import 'package:flutter/material.dart';
import 'package:grand/main_page.dart'; 

void main() {
  runApp(MaterialApp(
    title: 'تسجيل الدخول والتسجيل',
    home: Reg_page(),
  ));
}

class Reg_page extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Reg_page> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'البريد الإلكتروني'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'كلمة المرور'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;
                
                if (email == 'engineero' && password == '000') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => main_page()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('خطأ في تسجيل الدخول'),
                        content: Text('البريد الإلكتروني أو كلمة المرور غير صحيحة.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('حسنا'),
                          ),
                        ],
                      );
                    }, 
                  );
                }
              },
              child: Text('تسجيل الدخول'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('إنشاء حساب جديد'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إنشاء حساب جديد'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'البريد الإلكتروني'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'كلمة المرور'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;
              
                if (email.isNotEmpty && password.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('خطأ في إنشاء الحساب'),
                        content: Text('البريد الإلكتروني أو كلمة المرور غير مدخلة.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('حسنا'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('إنشاء الحساب'),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصفحة الرئيسية'),
      ),
      body: Center(
        child: Text('مرحبًا بك في الصفحة الرئيسية!'),
      ),
    );
  }
}
