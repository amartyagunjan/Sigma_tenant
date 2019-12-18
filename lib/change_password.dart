import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

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
              
              SizedBox(
                height: screenHeight*5,
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
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 85,
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: const InputDecoration(
                        labelText: 'New Password',
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
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 85,
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: const InputDecoration(
                        labelText: 'Repeat New Password',
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
                width: 75,
                color: Colors.blueAccent,
                child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      onTap: () {},
                      child: SizedBox(
                        height: 25,
                        child: Container(
                          
                          child: Text(
                            'Confirm',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}