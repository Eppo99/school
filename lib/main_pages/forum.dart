import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/dismissible_widget.dart';
import '../my_tools/hex_color.dart';
import 'all_subjects.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import 'package:oneunion/models/forum_data.dart';
import '../my_tools/icons.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {


  List<ForumModel> items = List.of(ForumData.ForumModels);
  List<ForumModel> questions = List.of(ForumData.ForumModels);
  List filters=["Новые","Топ","Хот"];
  List filterIcons=[MyFlutterApp.clock,MyFlutterApp.arrow_top_right,MyFlutterApp.whh_hot];



  TextStyle mainBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 20);
  TextStyle thinText= const TextStyle(fontWeight: FontWeight.w400,fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 20,right: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:50,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Форум",style: mainBold,),
                    ],
                  ),
                ),
              ),
              Container(
//                      margin: EdgeInsets.only(top: 30),
                  height: 40,
                  child:
                  ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for(int i=0;i<AllSubjects().subjects.length;i++)
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: taped(i),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5),
                            onTap: (){setState(() {
                              current=i;
                            });},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                              child: Text(
                                '${AllSubjects().subjects[i]}',
                                textAlign: TextAlign.start,
                                style:  TextStyle(
                                  color: current==i? Colors.white:Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
              ),

              Container(
//                      margin: EdgeInsets.only(top: 30),
                  height: 40,
                  child:
                  ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for(int i=0;i<3;i++)
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: currentFilter==i ? HexColor("FF7648"):HexColor("EAEAEA"),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: (){setState(() {
                            currentFilter=i;
                          });},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                            child: Row(
                              children:  [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Icon(
                                    filterIcons[i],
                                    size: i==1? 10:15,
                                    color: currentFilter==i ? Colors.white:HexColor("808080"),
                                  ),
                                ),
                                Text(
                                  '${filters[i]}',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: currentFilter==i ? Colors.white:HexColor("808080"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
              ),


              Expanded(
                child: Container(
//                      margin: EdgeInsets.only(top: 30),
//                  height: 500 ,
                width: MediaQuery.of(context).size.width,
                    child:
                    ListView.builder(
                      itemCount: questions.length,
                      // This next line does the trick.
//                        scrollDirection: Axis.horizontal,
                    itemBuilder:(BuildContext context,int index) {
                      return
                        Container(
                          margin: EdgeInsets.only(
                              left: 8,right: 8, top: 20),

//                            height: MediaQuery.of(context).size.height ,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: CircleAvatar(radius: 16,
                                  backgroundImage: NetworkImage(
                                      questions[index].urlAvatar),),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  margin: EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: <Widget>[
                                      Container(
                                          alignment: Alignment.topLeft,
                                          height: 16,
                                          child: Text("${questions[index].owner}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12),)),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(bottom: 16),
                                          height: 16,
                                          child: Text("${questions[index].date}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: HexColor("7C8894")),)),
                                      Container(
                                          margin: EdgeInsets.only(bottom: 13),
                                          child: Text(
                                              "${questions[index].question}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  height: 1.3,
                                                  fontFamily: 'SF Pro Display'))),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 16),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(MyFlutterApp.thumbs_up_2),
                                                    Text("${questions[index]
                                                        .liked}",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w700,
                                                          fontSize: 11,)),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(MyFlutterApp.comment_alt2,color: HexColor("808080"),),
                                                  Text("${questions[index]
                                                      .comments}",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w700,
                                                          fontSize: 11)),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(100),
                                              color: HexColor("E1F9F2"),

                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                  8.0),
                                              child: Text(
                                                  "#${questions[index].subject}"),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                    }
                    )
                ),
              ),//Avatar profile
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  child:  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Создать вопрос",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                  color: const Color(0xFFFF734A),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color:Color(0xFFFF734A) )),
                  onPressed: (){
//              Navigator.push(context, CupertinoPageRoute(
//                  builder: (context)=>AccessPageSms()
//              )
//              ); //Navigator
                  }, //onPressed

                ),
              ),


//                  Container(
//                    width: 400,
//                    height: MediaQuery.of(context).size.height,
//                    child:
//                    ListView.separated(
//                      itemCount: items.length,
//                      separatorBuilder: (context, index) => Divider(),
//                      itemBuilder: (context, index) {
//                        final item = items[index];
//
//                        return DismissibleWidget(
//                          item: item,
//                          child: buildListTile(item),
//                          onDismissed: (direction) =>
//                              dismissItem(context, index, direction),
//                        );
//                      },
//                    ),
////                ListView(
////                  children: [
////                    for(int i=0;i<25;i++)
////                    Row(
////                      children: <Widget>[
////                        Padding(padding: EdgeInsets.zero,
////                          child: CircleAvatar(backgroundImage: AssetImage("assets/Alima.png"),minRadius: 20,),
////                        ),
////                        Expanded(
////                          child: Container(
////                            alignment: Alignment.centerLeft,
////                            decoration: BoxDecoration(
////                              border: Border(
////                                bottom: BorderSide(width: 1.0, color: Colors.grey),
////                              )
////                            ),
////                            child: Row(
////                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
////                              children: [
////                                Column(
////                                  crossAxisAlignment: CrossAxisAlignment.start,
////                                  children: [
////                                    Padding(
////                                      padding: const EdgeInsets.only(left: 12.0,bottom: 4,top: 4),
////                                      child: Text("Сулейменова Алима",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
////                                    ),
////
////                                    Padding(
////                                      padding: const EdgeInsets.only(left: 12.0,bottom: 10,top: 4),
////                                      child: Text("XQCWR4",style: thinText),
////                                    ),
////                                  ],
////                                ),//name of friend
////                                Row(
////                                  children: [
////                                    IconButton(onPressed: (){}, icon: Icon(Icons.check_circle,color: HexColor("59E24D"),size: 35,),iconSize: 20,),
////                                    Container(
////                                      width: 34,
////                                      height: 34,
////                                      margin: EdgeInsets.zero,
////                                      decoration: BoxDecoration(
////                                        borderRadius: BorderRadius.circular(30),
////                                        color: Colors.red,
////                                      ),
////                                      child: IconButton(onPressed: (){},
////                                        icon: Icon(Icons.close_rounded,color: Colors.white,size: 18,), ),
////                                    ),
////
////                                  ],
////                                ) //accept or decline friend
////                              ],
////                            ),
////                          ),
////                        ),
////                      ],
////                    ),//Avatar profile
////
////                  ],
////                ),
//                  ),

            ],
          ),
        ),
      ),
    );
  }
  int current=0;
  int currentFilter=0;


  Color taped(int i){
    if(i==current) return HexColor("69CC6D");
    else  return Colors.white70;
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
        Utils.showSnackBar(context, 'ForumModel has been deleted');
        break;
      case DismissDirection.startToEnd:
        Utils.showSnackBar(context, 'ForumModel has been archived');
        break;
      default:
        break;
    }
  }

  Widget buildListTile(ForumModel item) => ListTile(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 16,
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.question,
//          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
//        Text(item.subject)
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
