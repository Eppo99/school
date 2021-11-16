import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import '../E_Widgets/BackButtonE.dart';



class Promocode extends StatelessWidget {
  TextStyle textBold=TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60,bottom: 26),
                  child: Text("Промокод",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                ),
//                backButton(context),
                Padding(padding: EdgeInsets.all(20),
                  child: Image.asset('assets/promocode.png'),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Как это работает?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                          Padding(padding: EdgeInsets.all(0),
                            child: Image.asset('assets/vector1.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  <Widget>[
                      Text('1.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: HexColor("FF734A"),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        width: 330,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Делитесь своим кодом!",style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ) ,),
                            Text("Поделись промокодом и получи 500KZT "
                                "бонусов при оформлении  подписки"
                                "через твой промокод! Ваши друзья"
                                "получат также наши BoBo бонусы!",
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  <Widget>[
                      Text('2.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: HexColor("FF734A"),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        width: 330,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Играй используя личный промокод!",style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ) ,),
                            Text("Вы можете пригласить друзей на турнир  через их уникальные промокоды.    Промокод используется как личный логин!",
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: RaisedButton(
                    child:  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("ABC55",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                    color:  HexColor("EEEDED"),
//                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color:  HexColor("EEEDED") )),
                    onPressed: (){
//              Navigator.push(context, CupertinoPageRoute(
//                  builder: (context)=>AccessPageSms()
//              )
//              ); //Navigator
                    }, //onPressed

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: RaisedButton(
                    child:  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Поделиться промокодом",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

