import 'package:chat_app/models/chatMessageModel.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {

  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

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
      body: Stack(
        children: [
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                child: Align(
                  alignment: (messages[index].messageType == 'receiver' ? Alignment.topLeft : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: (messages[index].messageType == 'receiver' ? Colors.grey.shade200 : Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(bottom: 10.0, left: 10.0, top: 10.0),
              height: 60.0,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Write Message ...',
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none,
                      ),
                    )
                  ),
                  SizedBox(width: 15.0,),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
