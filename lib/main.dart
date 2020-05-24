import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';
import 'package:wiredash_tutorial/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Wiredash(
      secret: secret,
      projectId: projectid,
      navigatorKey: _navigatorKey,
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wiredash Tutorial'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Wiredash.of(context).setOptions(userEmail: 'namastecoding@gmail.com');
          Wiredash.of(context).show();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
