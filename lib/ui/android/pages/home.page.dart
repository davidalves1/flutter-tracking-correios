import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tracking Correios'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              style: TextStyle(
                fontSize: 18,
              ),
              decoration: InputDecoration(
                labelText: 'Código de rastreio',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FlatButton(
              color: Theme.of(context).primaryColorDark,
              child: Text('Buscar'),
              onPressed: () {
                print('Realiza a consulta...');
              },
            )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Text('Item 1'),
                Text('Item 2'),
                Text('Item 3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}