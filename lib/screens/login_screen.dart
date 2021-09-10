import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

enum FormType { login, register }

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailFilter = TextEditingController();
  final TextEditingController _passwordFilter = TextEditingController();
  String _email = "";
  String _password = "";
  FormType _form = FormType.login;

  _LoginScreenState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  void _formChange() async {
    setState(() {
      if (_form == FormType.register) {
        _form = FormType.login;
      } else {
        _form = FormType.register;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            textFieldWidget(
                emailFilter: _emailFilter, passwordFilter: _passwordFilter),
            (_form == FormType.login)
                ? Container(
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          child: Text('Login'),
                          onPressed: _loginPressed,
                        ),
                        TextButton(
                          child: Text(
                              'Dont have an account? Tap here to register.'),
                          onPressed: _formChange,
                        ),
                        TextButton(
                          child: Text('Forgot Password?'),
                          onPressed: _passwordReset,
                        )
                      ],
                    ),
                  )
                : Container(
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          child: Text('Create an Account'),
                          onPressed: _createAccountPressed,
                        ),
                        TextButton(
                          child: Text('Have an account? Click here to login.'),
                          onPressed: _formChange,
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  void _loginPressed() {
    print('The user wants to login with $_email and $_password');
  }

  void _createAccountPressed() {
    print('The user wants to create an accoutn with $_email and $_password');
  }

  void _passwordReset() {
    print("The user wants a password reset request sent to $_email");
  }
}

class textFieldWidget extends StatelessWidget {
  const textFieldWidget({
    Key? key,
    required TextEditingController emailFilter,
    required TextEditingController passwordFilter,
  })  : _emailFilter = emailFilter,
        _passwordFilter = passwordFilter,
        super(key: key);

  final TextEditingController _emailFilter;
  final TextEditingController _passwordFilter;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              controller: _emailFilter,
              decoration: InputDecoration(labelText: 'Email'),
            ),
          ),
          Container(
            child: TextField(
              controller: _passwordFilter,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }
}
