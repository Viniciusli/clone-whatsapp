import 'package:flutter/material.dart';
import './pages/chat.dart';
import './pages/status.dart';
import './pages/chamadas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // static const List<Icon> _iconsFloatingButtom = [
  //   Icon(Icons.camera_alt),
  //   Icon(Icons.chat),
  //   Icon(Icons.camera_alt),
  //   Icon(Icons.call_sharp)
  // ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff128C7E),
            bottom: const TabBar(
              labelColor: Color(0xffECE5DD),
              indicatorColor: Colors.white,
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
                SizedBox(
                  width: 12,
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
              Status(),
              Chamadas(),
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   backgroundColor: const Color(0xff128C7E),
          //   child: _iconsFloatingButtom[],
          // ),
        ),
      ),
    );
  }
}
