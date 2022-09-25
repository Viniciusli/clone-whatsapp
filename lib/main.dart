import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff128C7E),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: "CONVERSAS"),
                Tab(text: "STATUS"),
                Tab(text: "CHAMADAS"),
              ],
            ),
            title: const Text('WhatsApp'),
            actions: [
              Row(children: const [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                )
              ])
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.camera_alt),
              Chat(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        Text('List 1'),
        Text('List 2'),
        Text('List 3'),
      ],
    );
  }
}

class Chat extends StatefulWidget {
  @override
  ChatState createState() {
    return new ChatState();
  }
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new ListView.builder(
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
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
              padding: EdgeInsets.only(top: 5),
              child: Text(
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
