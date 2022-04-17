import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(SecondPage());
class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
        ),
        body: bio(),
      ),
    );
  }
}

class bio extends StatefulWidget {
  @override
  _bioState createState() => _bioState();
}

class _bioState extends State<bio> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15.0, left: 15.0),
        child: Column(children: <Widget>[
          Container(
              child: Image.asset('assets/farid.jpg'),
          ),
          Container(
              alignment: Alignment.center,
              child: Text('Farid Handoyo', style: TextStyle(fontSize: 14.0),)
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                '20190801256',
                style: TextStyle(
                    fontSize: 14.0),),
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                'Universitas Esa Unggul Tangerang', style: TextStyle(fontSize: 14.0),)
          ),
          Container(
            child: RaisedButton(
                child: Text("Kembali"),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp())
                  );
                }),
          )
        ])
    );
  }
}