import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'authorization_page.dart';
import 'sign_in_page.dart';
import '../E_Widgets/BackButtonE.dart';

class AccessPage1 extends StatelessWidget {
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
                  child: Text('Ну что, начнем?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),

                  ),
                ),
                Padding(padding: EdgeInsets.all(0),
                  child: Text('Для начала войдите в свой профиль?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),

                  ),
                ),
                Padding(padding: EdgeInsets.all(0),
                  child: Image.asset('assets/AccessPage1.png'),

                ),

              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  child: RaisedButton(
                    child:  Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Войти",
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
                          builder: (context)=>SignInPage()
                      )
                      ); //Navigator
                    }, //onPressed

                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
                  child: RaisedButton(
                    child:  Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Зарегистрироваться",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),

                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                    color: Colors.white,
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color:Colors.black )),
                    onPressed: (){
                      Navigator.push(context, CupertinoPageRoute(
                          builder: (context)=>AuthorizationPage2()
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
