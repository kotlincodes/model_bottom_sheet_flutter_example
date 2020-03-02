import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bottom Sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Open Bottom Sheet",style: TextStyle(color: Colors.white),),
          color: Colors.blue,
          onPressed: ()=>_showBottomSheet(),
        ),
      )
    );
  }
  _showBottomSheet() {
    showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            Container(
              child: ListTile(
                title: Text("Gallery"),
                leading: Icon(Icons.image),
              ),
            ),
            Container(
              child: ListTile(
                title: Text("Camera"),
                leading: Icon(Icons.camera),
              ),
            )
          ],
        ),
      );
    }
    );
  }

}
