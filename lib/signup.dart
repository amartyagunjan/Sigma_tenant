import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  "SignUp",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight*5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
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
                    flex: 85,
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                      validator: (value){
                        if (value.trim().isEmpty) {
                          return 'Password is required';
                        }
                      },
                    ),
                  ),
                  Flexible(
                    flex: 15,
                    child: FlatButton(
                        onPressed: _toggle,
                        child: _obscureText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                    
                  ),
                  ),],
              ),
              SizedBox(
                height: screenHeight*5
              ),
              Container(
                width: screenWidth*70,
                child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Text(
                    "Sign Up",
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
                    Text("Already have an account?"),
                    FlatButton(
                      child: Text("Sign In"),
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