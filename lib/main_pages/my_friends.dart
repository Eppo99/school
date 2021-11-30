import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/dismissible_widget.dart';
import 'package:oneunion/models/data.dart';

import '../my_tools/hex_color.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'promocode.dart';
import 'payment.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'package:oneunion/my_tools/hex_color.dart';

class My_friends extends StatefulWidget {
  @override
  _My_friendsState createState() => _My_friendsState();
}

class _My_friendsState extends State<My_friends> {


  List<Chat> items = List.of(Data.chats);

  TextStyle mainBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 20);
  TextStyle thinText= const TextStyle(fontWeight: FontWeight.w400,fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 20,right: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Text("Мои друзья",style: mainBold,),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.zero,
                    child: CircleAvatar(backgroundImage: AssetImage("assets/Avatar.png"),minRadius: 20,),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0,bottom: 4,top: 4),
                              child: Text("Алишер",style: mainBold,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0,bottom: 10,top: 4),
                              child: Text("XQCWR4",style: thinText),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),//Avatar profile

              Padding(padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                child:
                Container(
                  width: MediaQuery.of(context).size.width,
                  child:  Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child:
                    TextField(

                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: HexColor("4B4B4B"),),
                        hintText: "Найти друга",
                        hoverColor: HexColor("4B4B4B"),
                        enabledBorder:   OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide:  BorderSide(color: HexColor("4B4B4B"), width: 0.0),
                        ),
                        border: const OutlineInputBorder(
                          borderSide:  BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        disabledBorder:  const OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        hintStyle: TextStyle(fontSize: 20.0, color: HexColor("5B5B5B")),
                        filled: true,
                        fillColor: Color.fromRGBO(169, 168, 168, 0.2),

                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width: 400,
                height: 500,
                child:
                ListView.separated(
                  itemCount: items.length,
                  separatorBuilder: (context, index) => Divider(),
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return DismissibleWidget(
                      item: item,
                      child: buildListTile(item),
                      onDismissed: (direction) =>
                          dismissItem(context, index, direction),
                    );
                  },
                ),
//                ListView(
//                  children: [
//                    for(int i=0;i<25;i++)
//                    Row(
//                      children: <Widget>[
//                        Padding(padding: EdgeInsets.zero,
//                          child: CircleAvatar(backgroundImage: AssetImage("assets/Alima.png"),minRadius: 20,),
//                        ),
//                        Expanded(
//                          child: Container(
//                            alignment: Alignment.centerLeft,
//                            decoration: BoxDecoration(
//                              border: Border(
//                                bottom: BorderSide(width: 1.0, color: Colors.grey),
//                              )
//                            ),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: [
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 12.0,bottom: 4,top: 4),
//                                      child: Text("Сулейменова Алима",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
//                                    ),
//
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 12.0,bottom: 10,top: 4),
//                                      child: Text("XQCWR4",style: thinText),
//                                    ),
//                                  ],
//                                ),//name of friend
//                                Row(
//                                  children: [
//                                    IconButton(onPressed: (){}, icon: Icon(Icons.check_circle,color: HexColor("59E24D"),size: 35,),iconSize: 20,),
//                                    Container(
//                                      width: 34,
//                                      height: 34,
//                                      margin: EdgeInsets.zero,
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.circular(30),
//                                        color: Colors.red,
//                                      ),
//                                      child: IconButton(onPressed: (){},
//                                        icon: Icon(Icons.close_rounded,color: Colors.white,size: 18,), ),
//                                    ),
//
//                                  ],
//                                ) //accept or decline friend
//                              ],
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),//Avatar profile
//
//                  ],
//                ),
              ),




//              SizedBox(
//                width: 300,
//                child: ListView(
//                  children: <Widget>[
//
//                      SizedBox(
//                        width: 300,
//                        child: Row(
//                          children: <Widget>[
//                            Padding(padding: EdgeInsets.zero,
//                              child: CircleAvatar(backgroundImage: AssetImage("assets/Avatar.png"),),
//                            ),
//                            Column(
//                              children: [
//                                Text("Ануар",style: mainBold,),
//                                Text("XQCWR4",style: thinText,)
//                              ],
//                            )
//                          ],
//                        ),
//                      ),//Avatar profile
//
////                    Container(
////                      width: 300,
////                      child: Row(
////                        children: <Widget>[
////                          Padding(padding: EdgeInsets.zero,
////                            child: CircleAvatar(backgroundImage: AssetImage("assets/Avatar.png"),),
////                          ),
////                          Column(
////                            children: [
////                              Text("Subscription",style: mainBold,),
////                              Text("XQCWR4",style: thinText,)
////                            ],
////                          )
////                        ],
////                      ),
////                    ),//Avatar profile
//
////                    Row(
////                      children: <Widget>[
////                        Padding(
////                          padding: const EdgeInsets.symmetric(horizontal:6.0,vertical: 4),
////                          child: Icon(Icons.check,color: HexColor("0165BC"),),
////                        ),
////                        Padding(
////                          padding: const EdgeInsets.symmetric(horizontal:6.0,vertical: 4),
////                          child: Text("${featuresText[i]}"),
////                        )
////                      ],
////                    ),
//
//                  ],
//                ),
//              ),//about My_friends


            ],
          ),
        ),
        ]
      ),
    );
  }

  void dismissItem(
      BuildContext context,
      int index,
      DismissDirection direction,
      ) {
    setState(() {
      items.removeAt(index);
    });

    switch (direction) {
      case DismissDirection.endToStart:
        Utils.showSnackBar(context, 'Chat has been deleted');
        break;
      case DismissDirection.startToEnd:
        Utils.showSnackBar(context, 'Chat has been archived');
        break;
      default:
        break;
    }
  }

  Widget buildListTile(Chat item) => ListTile(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 16,
    ),
    leading: CircleAvatar(
      radius: 28,
      backgroundImage: NetworkImage(item.urlAvatar),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.username,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(item.message)
      ],
    ),
    onTap: () {},
  );

}


class Utils {
  static void showSnackBar(BuildContext context, String message) =>
      Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(message)),
        );
}
