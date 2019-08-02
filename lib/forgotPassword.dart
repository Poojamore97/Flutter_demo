import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPassword createState() => _ForgotPassword();
}

class _ForgotPassword extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
        backgroundColor: Colors.red[600],
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Forgotten Username/Password',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 15,
                ),
                // style: Theme.of(context).textTheme.headline,
              ),
              Text(
                'Please enter your email address and we will mail you a link to reset your password.',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 14,
                ),
              ),
              new Container(
                child: new TextField(
                  // controller: _emailFilter,
                  decoration: new InputDecoration(labelText: 'Email'),
                ),
              ),
              new RaisedButton(onPressed: () {},
              color: Colors.red[600], 
              child: Text('Submit',
              style: TextStyle(
                color: Colors.white,
              )
              )
              ),
              Text(
                'If you don,t see the message in your inbox,please check your junk Mail/Spam folder',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.6,
                  fontSize: 15,
                ),
              ),
            ]
            ),
      )
      ),
    );
  }
}
