import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
              
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.contain)),
                ),
                Text("App Taxi Vina"),
                SizedBox(height:10),
                Material(
                  color: Theme.of(context).accentColor,
                  elevation: 5, 
                  borderRadius: BorderRadius.circular(30), 
                  child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text("Đăng nhập"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
