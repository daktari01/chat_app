import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black,),
                  onPressed: () {
                    Navigator.pop(context);
                  }
                ),
                SizedBox(width: 2.0,),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://uifaces.co/our-content/donated/yn7PKqTT.jpg'),
                  maxRadius: 20.0,
                ),
                SizedBox(width: 12.0,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kriss Benwat',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13.0
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.black54,
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
