import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'access_page_sms.dart';
import '../E_Widgets/BackButtonE.dart';



class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                backButton(context),
                Padding(padding: EdgeInsets.all(0),
                  child: Image.asset('assets/SignInPage.png'),
                ),

                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children: const <Widget>[
                      Text('Ваш номер телефона',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),)
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
                  ),
                ),
              ],
            ),
            Column(
              children:  [
                Padding(padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  child: RaisedButton(
                    child:  Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Отправить код",
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
                      Navigator.push(context, CupertinoPageRoute(
                          builder: (context)=>AccessPageSms()
                      )
                      ); //Navigator
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
