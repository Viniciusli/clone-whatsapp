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
      home: Scaffold(
        appBar: header,
        body: const Home(),
      ),
    );
  }
}

AppBar header = AppBar(
  leading:  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        'WhatsApp',
        style: TextStyle(
            fontSize: 30,
            color: Colors.white,
        ),
      ),
    ],
  ),
  leadingWidth: 200,
  elevation: 0,
  actions: [
    Row(
      children: const [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        SizedBox(width: 8,)
      ]
    )
  ],
  backgroundColor: Color(0xff128C7E),
);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        navigationBar,
        listMessages,
      ],
    );
  }
}

Widget navigationBar = Container(
  color: Color(0xff128C7E),
  height: 45,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
                Icons.camera_alt,
                color: Color(0xffECE5DD),
            ),
          ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'CONVERSAS',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
              'STATUS',
              style: TextStyle(
                color: Color(0xffECE5DD),
                fontSize: 16,
                fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'CHAMADAS',
            style: TextStyle(
              color: Color(0xffECE5DD),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ],
  ),
);

Widget listMessages = Container(
  child: ListView(
    padding: EdgeInsets.all(8),
    children: [
      Text('messagem 1'),
      Text('messagem 2'),
      Text('messagem 3'),
      Text('messagem 4'),
    ],
  ),
);



