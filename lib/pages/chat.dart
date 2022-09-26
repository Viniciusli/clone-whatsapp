import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  ChatState createState() {
    return ChatState();
  }
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new ListView.builder(
      itemCount: 5,
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
                new Text(
                  '20:45',
                  style: new TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5),
              child: const Text(
                'mensagem de text',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
