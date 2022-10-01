import 'package:flutter/material.dart';

class Chamadas extends StatefulWidget {
  @override
  ChamadaState createState() {
    return ChamadaState();
  }
}

class ChamadaState extends State<Chamadas> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          const Divider(
            height: 10,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(
                  'https://4maos.com.br/wp-content/uploads/2022/06/c61aaca8201efb68d7b1346888f9a52c.jpg'),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Nome',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.call, color: Color(0xff128C7E))
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5),
              child: Row(children: [
                Icon(
                  Icons.call_made_rounded,
                  color: Color(0xff128C7E),
                ),
                Text(
                  '(2) Hoje 07:35',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
