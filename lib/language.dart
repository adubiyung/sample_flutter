import 'package:flutter/material.dart';
import 'package:sample_flutter/login.dart';

class Language extends StatefulWidget {
  LanguageState createState() => LanguageState();
}

class LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.orangeAccent,
                        radius: 50.0,
                        child: Icon(
                          Icons.local_parking,
                          color: Colors.blueAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Parkirin",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                // flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("LOG IN"),
                          textColor: Colors.white,
                          color: Colors.orangeAccent,
                          onPressed: moveToLogin,
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          color: Colors.orangeAccent,
                          textColor: Colors.white,
                          child: Text("REGISTER"),
                          onPressed: moveToRegister,
                        ),
                      ],
                    ),
                    RaisedButton(
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text("CONTINUE WITH FACEBOOK"),
                      onPressed: moveToFacebook,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void moveToLogin() {
    Navigator.of(context).push(PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new Login()
    ));
  }

  void moveToRegister() {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new Login()
    ));
  }

  void moveToFacebook() {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new Login(),
        transitionDuration: const Duration(seconds: 2)
    ));
  }

}