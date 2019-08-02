import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  FocusNode email = new FocusNode();
  FocusNode password = new FocusNode();

  @override
  Widget build(BuildContext context) {
    final emailField = new Container(
      child: new TextField(
        focusNode: email,
        cursorColor: Colors.red[600],
        decoration: new InputDecoration(
          labelText: 'Email',
          labelStyle:
              TextStyle(color: email.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final passwordField = new Container(
      child: new TextField(
        cursorColor: Colors.red[600],
        focusNode: password,
        obscureText: true,
        decoration: new InputDecoration(
          labelText: 'password',
          labelStyle: TextStyle(
              color: password.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final loginButon = Material(
      elevation: 5.0,
      color: Colors.red[600],
      borderRadius: BorderRadius.circular(5),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/logo.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 16.0,
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/forgotPassword");
                  },
                  child: new Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top:10),
                  child:Text.rich(TextSpan(text: "Don't have account?-", children: [
                  TextSpan(
                      text: 'Sign Up Now!',
                      style: TextStyle(color: Colors.red[600], fontSize: 16),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/register');
                        })
                ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
