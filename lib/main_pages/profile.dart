import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'promocode.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextStyle smallTextStyle=const TextStyle(fontSize: 13,fontWeight: FontWeight.w400);
  BoxDecoration circleBorders =BoxDecoration(
    color: Colors.black12,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Профиль",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Image.asset("assets/Avatar.png"),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children:  <Widget>[
                      Text('Ваше имя',
                        textAlign: TextAlign.left,
                        style: smallTextStyle,)
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
                  child:
                  TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Ваше имя",
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        borderSide:  BorderSide(color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      disabledBorder:  OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      hintStyle: TextStyle(fontSize: 20.0, color: Color.fromRGBO(39, 39, 39, 0.4)),
                      filled: true,
                      fillColor: Color.fromRGBO(169, 168, 168, 0.2),

                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children:  <Widget>[
                      Text('Ваш номер телефона',
                        textAlign: TextAlign.left,
                        style: smallTextStyle,)
                    ],
                  ),


                ),
                const Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
                    child:
                    TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "+7",
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide:  BorderSide(color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        disabledBorder:  OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        hintStyle: TextStyle(fontSize: 20.0, color: Color.fromRGBO(39, 39, 39, 0.4)),
                        filled: true,
                        fillColor: Color.fromRGBO(169, 168, 168, 0.2),

                      ),
                    )
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children:  <Widget>[
                      Text('Ваш личный промокод',
                        textAlign: TextAlign.left,
                        style: smallTextStyle,)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        width: 300,
                        child: Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child:
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              hintText: "ABC55",
                              enabledBorder:  OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                                borderSide:  BorderSide(color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              disabledBorder:  OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              hintStyle: TextStyle(fontSize: 20.0, color: Color.fromRGBO(39, 39, 39, 0.4)),
                              filled: true,
                              fillColor: Color.fromRGBO(169, 168, 168, 0.2),

                            ),
                          ),
                        ),
                      ),

                      Container(
                        decoration: circleBorders,
                        width: 50,
                        child:
                        IconButton(
                          onPressed: (){
                                                  Navigator.push(context, CupertinoPageRoute(
                          builder: (context)=>Promocode()
                      )
                      ); //Navigator
                          },
                          icon: const Icon(Icons.share),
                        )
                        ,
                      )
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                      child:
                      SizedBox(
                        width: 300,
                        child: Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child:
                          TextField(
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              hintText: "ввести промокод",
                              enabledBorder:  OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                                borderSide:  BorderSide(color: Color.fromRGBO(169, 168, 168, 0.2), width: 0.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              disabledBorder:  OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              hintStyle: TextStyle(fontSize: 20.0, color: Color.fromRGBO(39, 39, 39, 0.4)),
                              filled: true,
                              fillColor: Color.fromRGBO(169, 168, 168, 0.2),

                            ),
                          ),
                        ),
                      ),



                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children: const <Widget>[
                      Text('Накоплено баллов: 500',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),)
                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: RaisedButton(
                child:  Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Применить",
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
      ),
    );
  }
}
