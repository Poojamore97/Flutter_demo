import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  FocusNode firstName = new FocusNode();
  FocusNode lastName = new FocusNode();
  FocusNode mobileNumber = new FocusNode();
  FocusNode email = new FocusNode();
  FocusNode password = new FocusNode();
  FocusNode confirmPassword = new FocusNode();
  FocusNode referralCode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    final firstNameField = new Container(
      child: new TextField(
        focusNode: firstName,
        cursorColor: Colors.red[600],
        decoration: new InputDecoration(
          labelText: 'First Name',
          labelStyle: TextStyle(
              color: firstName.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final lastNameField = new Container(
      child: new TextField(
        cursorColor: Colors.red[600],
        focusNode: lastName,
        obscureText: true,
        decoration: new InputDecoration(
          labelText: 'Last Name',
          labelStyle: TextStyle(
              color: lastName.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final mobileNumberField = new Container(
      child: new TextField(
        focusNode: mobileNumber,
        cursorColor: Colors.red[600],
        decoration: new InputDecoration(
          labelText: 'Mobile',
          labelStyle: TextStyle(
              color: mobileNumber.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final emailField = new Container(
      child: new TextField(
        cursorColor: Colors.red[600],
        focusNode: email,
        obscureText: true,
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
        focusNode: password,
        cursorColor: Colors.red[600],
        decoration: new InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
              color: password.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final confirmPasswordField = new Container(
      child: new TextField(
        cursorColor: Colors.red[600],
        focusNode: confirmPassword,
        obscureText: true,
        decoration: new InputDecoration(
          labelText: 'Contirm Password',
          labelStyle: TextStyle(
              color: confirmPassword.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final referralCodeField = new Container(
      child: new TextField(
        cursorColor: Colors.red[600],
        focusNode: referralCode,
        obscureText: true,
        decoration: new InputDecoration(
          labelText: 'Referral Code(Optional)',
          labelStyle: TextStyle(
              color: referralCode.hasFocus ? Colors.red[600] : Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red[600]),
          ),
        ),
      ),
    );
    final registerButton = Material(    
      color: Colors.red[600],
      borderRadius: BorderRadius.circular(5),
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.fromLTRB(20.0, .0, 20.0, 5.0),
        onPressed: () {},
        child: Text("SIGN UP",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.w500,fontSize: 15)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Text('Mhozo', textAlign: TextAlign.center),
        ),
        backgroundColor: Colors.red[600],
        leading: new Container(),
      ),
      body: Center(
        child: Container(
          color: Colors.white,          
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
                new Center(
                  child: Text('Registration',
                  style:TextStyle(
                    fontSize: 25,
                    fontWeight:FontWeight.w500,
                    color:Colors.red[600]
                  )),
                ),             
                firstNameField,
                lastNameField,
                mobileNumberField,
                emailField,             
                passwordField,
                confirmPasswordField,
                referralCodeField,
                SizedBox(
                  height: 15.0,
                ),
                registerButton,
                SizedBox(
                  height: 15.0,
                ),
                new Container(
                  child: Text('By clicking sign up you agree to have read and accept the',
                  textAlign: TextAlign.center),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
