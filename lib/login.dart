import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    final screenWidth= MediaQuery.of(context).size.width/100;
    final screenHeight = MediaQuery.of(context).size.height/100;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Color(0xffC5CCD6),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: screenHeight*5,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "Login",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight*10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 90,
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value.trim().isEmpty) {
                          return 'Password is required';
                        }
                      },
                    ),
                  ),
                  Flexible(
                    flex: 10,
                    child: FlatButton(
                        onPressed: _toggle,
                        child: _obscureText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                    
                  ),
                  ),],
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text("Forgot password?"),
                  onPressed: () {},
                ),
              ),
              Container(
                width: screenWidth*70,
                child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                width: screenWidth*20,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    FlatButton(
                      child: Text("Sign Up"),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}