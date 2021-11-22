import '/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

  final User user=james;

  ChatScreen(
//      {required this.user} //who sends
      );
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessageComposer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Theme.of(context).colorScheme.onBackground,
      child: Row(
        children: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.photo),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value){
//                  setState(() {
//
//                  });
                },
                decoration: InputDecoration.collapsed(
                    hintText: 'Send a message'),
              )
          ),
          IconButton(onPressed: (){},
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onBackground,

        centerTitle: true,
        title: Text(
          "Служба поддержки",
          style: (TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          )),
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.more_horiz),
            iconSize: 30,
            color: Theme.of(context).colorScheme.onBackground,

          ),
        ],
      ),
      body: GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                  child: ListView.builder(
                    reverse: true,
                      itemBuilder: (BuildContext context,int index){
                        final Message message=messages[index];
                        final bool isme = message.sender.id == currentUser.id;
                    return _buildMessage(message,isme);
                  },
                    itemCount: messages.length,
                  ),
                ),
              ),
            ),
            _buildMessageComposer()
          ],
        ),
      ),
    );
  }

   _buildMessage(Message message, bool isme) {
    return Container(
      margin: isme
          ? EdgeInsets.only(top: 8.0,bottom: 8.0,right: 80)
          : EdgeInsets.only(top: 8.0,bottom: 8.0,left: 80),
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
      decoration: BoxDecoration(
          color: isme
              ? Theme.of(context).dividerColor
              : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time,
          style: const TextStyle(
            color: Colors.blueGrey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          ),
          SizedBox(height: 8),
          Text(message.text,
          style: TextStyle(
            color: isme ? Theme.of(context).colorScheme.onBackground
            :Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          ),
        ],
      ),
    );
   }
}
