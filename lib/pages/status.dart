import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';
import 'dart:math';

class Status extends StatefulWidget {
  @override
  StatusState createState() {
    return StatusState();
  }
}

class StatusState extends State<Status> {
  final Random _rdn = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ignore: unnecessary_new
          new ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                StatusView(
                  radius: 30,
                  spacing: 15,
                  strokeWidth: 2,
                  indexOfSeenStatus: _rdn.nextInt(5),
                  numberOfStatus: _rdn.nextInt(6) + 5,
                  padding: 4,
                  centerImageUrl: "https://picsum.photos/200/300",
                  seenColor: Colors.grey,
                  unSeenColor: Colors.green,
                ),
              ],
            ),
            // ignore: unnecessary_new
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Me',
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5),
              child: const Text(
                'Há 51 minutos',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              "Atualizações recentes",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i) => Column(
                  children: <Widget>[
                    const Divider(
                      height: 10,
                    ),
                    // ignore: unnecessary_new
                    new ListTile(
                        leading: Stack(
                          alignment: Alignment.center,
                          children: [
                            StatusView(
                              radius: 30,
                              spacing: 15,
                              strokeWidth: 2,
                              indexOfSeenStatus: _rdn.nextInt(5),
                              numberOfStatus: _rdn.nextInt(6) + 5,
                              padding: 4,
                              centerImageUrl: "https://picsum.photos/200/300",
                              seenColor: Colors.grey,
                              unSeenColor: Colors.green,
                            ),
                          ],
                        ),
                        // ignore: unnecessary_new
                        title: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'Nome',
                              // ignore: prefer_const_constructors
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: new Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            'Há 51 minutos',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
