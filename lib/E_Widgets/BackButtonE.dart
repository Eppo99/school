import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget backButton(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),

      )
    ],
  );

}

Widget enterPhone(){
  return TextField(
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
  );

}
//class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);
//  @override
//  Widget build(BuildContext context) { //функция которая возвращает билд (выполняется фоново)
//    return MaterialApp(
//        title: 'пока неизвестно',
//        theme: ThemeData(
//          primarySwatch: Colors.amber,
//        ),
//        home: Scaffold(
//          body:
//          Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: [
//              Image.asset('assets/saly.png'),
//              Padding(
//                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 80),
//                  child:
//                  RichText(
//                    text: const TextSpan(
//                      text: 'Мы рады видеть вас в ',
//                      style: TextStyle(
//                        fontWeight: FontWeight.w700,
//                        fontSize: 32,
//                        color: Colors.black87,
//                      ),
//                      children:  <TextSpan>[
//                        TextSpan(text: 'BoBo', style: TextStyle(
//                          fontWeight: FontWeight.w700,
//                          fontSize: 32,
//                          color: Color(0xFFFF734A),
//                        )
//                        ),
//                      ],
//                    ),
//                    textDirection: TextDirection.ltr,
//                    textAlign: TextAlign.center,
//                  )
//              ),
//              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
//                child: RaisedButton(
//                  child:  Container(
//                    width: 180,
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.end,
//                      children: [
//                        Text("Далее",
//                          textAlign: TextAlign.center,
//                          style: TextStyle(
//                            fontSize: 18,
//                            fontWeight: FontWeight.w400,
//                          ),
//
//                        ),
//                        Container(
//                          padding: EdgeInsets.all(15),
//                          margin: EdgeInsets.fromLTRB(25, 5, 5, 5),
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.all(Radius.circular(80)),
//                            color: Colors.white30,
//                          ),
//
//                          child: Image.asset('assets/arrow-right.png'),
//                        )
//                      ],
//                    ),
//                  ),
//                  padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
//                  color: Color(0xFFFF734A),
//                  textColor: Colors.white,
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(300.0),
//                      side: BorderSide(color:Color(0xFFFF734A) )),
//                  onPressed: (){
//                    Navigator.push(context, CupertinoPageRoute(
//                        builder: (context)=>SecondPage()));
//                  },
//
//                ),
//
//              ),
//              SmoothPageIndicator(
//                controller: PageController(viewportFraction: 0.8, keepPage: true,initialPage: 0),
//                count: 3,
//                effect: const ExpandingDotsEffect(
//                  dotHeight: 10,
//                  dotWidth: 10,
//                  dotColor:Colors.grey,
//                  activeDotColor:  Colors.black87,
//                  expansionFactor: 2,
//                  // strokeWidth: 5,
//                ),
//              ),
//
//            ],
//          ),
//
//
//        )
//      //const MyHomePage(title: 'Верхняя титулка'),
//    );
//  }
//}
