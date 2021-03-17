import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Conversations',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0, bottom: 2.0),
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.pink[50]
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20.0,
                          ),
                          SizedBox(width: 2.0),
                          Text(
                            'Add New',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
