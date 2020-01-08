import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 100;
    final screenHeight = MediaQuery.of(context).size.height / 100;
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight * 45,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8,
                            0.0), // 10% of the width, so there are ten blinds.
                        colors: [
                          const Color(0xFF667EEA),
                          const Color(0xFF64B6FF)
                        ], // whitish to gray
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: screenWidth * 20,
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: Color(0xffFFFFFF),
                                onPressed: () => Navigator.pop(context, false),
                              ),
                            ),
                            Container(
                              width: screenWidth * 60,
                              alignment: Alignment.center,
                              child: Text(
                                "Profile",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Container(
                          height: screenWidth * 30,
                          width: screenWidth * 30,
                          child: Image.asset("assets/manInSuit.png",
                              fit: BoxFit.cover),
                        ),
                        Text(
                          "Amartya Gunjan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight*2,
                        ),
                        Text(
                          "9505164013",  //It is hard coded here.
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 3,
                        ),

                        // Circular Button rows...

                        Container(
                          width: screenWidth * 65,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RaisedButton(
                                child: Text(
                                  "Upload Photo",
                                  style: TextStyle(fontSize: 11),
                                ),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                              ),
                              RaisedButton(
                                child: Text(
                                  "Edit Profile",
                                  style: TextStyle(fontSize: 11),
                                ),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                              )
                            ],
                          ),
                        ),

                        //Circular button row ends here...
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(screenWidth * 5),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: screenWidth*90,
                      child: Text(
                    "Phone Number",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )),
                  Container(
                    height: 25,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: screenWidth * 80,
                          height: 20,
                          child: Text(
                            "9505164013",
                          ),
                        ),
                        Container(
                          height: 20,
                          width: screenWidth * 10,
                          child: IconButton(iconSize: 15,
                            icon: Icon(Icons.edit),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE8E8E8),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 25,
                      width: screenWidth * 90,
                      child: Text(
                        'Saved',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE8E8E8),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 25,
                      width: screenWidth * 90,
                      child: Text(
                        'Change Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE8E8E8),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 25,
                      width: screenWidth * 90,
                      child: Text(
                        'Language',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE8E8E8),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 25,
                      width: screenWidth * 90,
                      child: Text(
                        'Notifications',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE8E8E8),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 25,
                      width: screenWidth * 90,
                      child: Text(
                        'Logout',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
