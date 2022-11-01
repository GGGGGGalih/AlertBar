import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  final String textFromController;
  final String textFromTextField;

  SecondRoute(
      {Key? key,
      required this.textFromController,
      required this.textFromTextField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman 2"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("dari controller" + textFromController),
              Text("dari textfield" + textFromTextField),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
