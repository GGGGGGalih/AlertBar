import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Notification")),
        body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Builder(
                builder: (context) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            child: Text("Show Toast"), onPressed: showToast),
                        ElevatedButton(
                            child: Text("Show Basic Alert"),
                            onPressed: () {
                              showBasicAlert(context);
                            })
                      ],
                    ))),
      ),
    );
  }

  void showToast() {
    setState(() {
      Fluttertoast.showToast(
          msg: "This is toast notification",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
    });
  }

  void showBasicAlert(BuildContext context) {
    setState(() {
      Widget okButton = TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );

      AlertDialog alert = AlertDialog(
        title: Text("Basic Alert"),
        content: Text("This is Alert Dialog"),
        actions: [okButton],
      );

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          });
    });
  }
}
