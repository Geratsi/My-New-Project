import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
  ScreenWidget(),
);

class MyApp extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new TextFormField(
                    decoration: new InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                    style: _sizeTextBlack,
                  ),
                  width: 300.0,
                ),
                new Container(
                  child: new TextFormField(
                    decoration: new InputDecoration(labelText: "Password"),
                    obscureText: true,
                    style: _sizeTextBlack,
                  ),
                  width: 300.0,
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 35.0),
                  child: new MaterialButton(
                    color: Theme
                        .of(context)
                        .accentColor,
                    height: 50.0,
                    minWidth: 150.0,
                    onPressed: () {  },
                    child: new Text(
                      "LOGIN",
                      style: _sizeTextWhite,
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter login demo'),
        ),
        
      ),
    );
  }
}


