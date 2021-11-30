import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/dismissible_widget.dart';
import '../my_tools/hex_color.dart';
import 'all_subjects.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import '../models/favourites_model.dart';
class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {


  List<FavouritesModel> items = List.of(FavouritesData.FavouritesModels);

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
                      padding: EdgeInsets.only(top:50,bottom: 20),
                      child: Text("Избранное",style: mainBold,),
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
                            InkWell(
                              onTap: (){setState(() {
                                current=i;
                              });},
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: taped(i),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  child: Text(
                                    '${AllSubjects().subjects[i]}',
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
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
                  ),//Avatar profile
                  Container(
                    width: 400,
                    height: MediaQuery.of(context).size.height,
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

                ],
              ),
            ),
          ]
      ),
    );
  }
  int current=0;

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
        Utils.showSnackBar(context, 'FavouritesModel has been deleted');
        break;
      case DismissDirection.startToEnd:
        Utils.showSnackBar(context, 'FavouritesModel has been archived');
        break;
      default:
        break;
    }
  }

  Widget buildListTile(FavouritesModel item) => ListTile(
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
