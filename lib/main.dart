import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'E_Widgets/BackButtonE.dart';
void main() {
//  runApp( MyApp());
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool is_authorized=false;
  bool is_first_time=false;
  final controller = PageController(viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/saly.png'),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 80),
              child:
              RichText(
                text: const TextSpan(
                  text: 'Мы рады видеть вас в ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Colors.black87,
                  ),
                  children:  <TextSpan>[
                    TextSpan(text: 'BoBo', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Color(0xFFFF734A),
                    )
                    ),
                  ],
                ),
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              )
          ),
        ],
      ),

    ),
      //first page end
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        margin: EdgeInsets.fromLTRB(10, 50, 1, 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/saly2.png'),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 80),
                child:
                RichText(
                  text: const TextSpan(
                    text: 'Мы первый онлайн сборник тестов по ЕНТ с подробными видео-решениями ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.black87,
                    ),

                  ),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                )
            ),
          ],
        ),

      ),
      //second page end
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/saly3.png'),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 80),
                child:
                RichText(
                  text: const TextSpan(
                    text: 'Учитесь, улучшайтесь и получайте высшийй балл вместе с ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                    children:  <TextSpan>[
                      TextSpan(text: 'BoBo', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color(0xFFFF734A),
                      )
                      ),
                      TextSpan(text: '!', style: TextStyle()),
                    ],
                  ),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                )
            ),
          ],
        ),

      ),
      //third page end
    ];
//    List.generate(
//        3,
//            (index) => Container(
//          decoration: BoxDecoration(
//            borderRadius: BorderRadius.circular(16),
//            color: Colors.white,
//          ),
//          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//          child: Column(
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
//            ],
//          ),
//
//            ));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 580,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: RaisedButton(
                  child:  Container(
                    width: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Далее",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),

                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.fromLTRB(25, 5, 5, 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            color: Colors.white30,
                          ),

                          child: Image.asset('assets/arrow-right.png'),
                        )
                      ],
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                  color: Color(0xFFFF734A),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(300.0),
                      side: BorderSide(color:Color(0xFFFF734A) )),
                  onPressed: (){
                    if(controller.page==2 ){
                      is_first_time=true;
                      Navigator.push(context, CupertinoPageRoute(
                          builder: (context)=>AccessPage1()));
                    }
                    else
                      controller.nextPage(duration: Duration(milliseconds: 500), curve:Curves.decelerate );
                  },

                ),

              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor:Colors.grey,
                  activeDotColor:  Colors.black87,
                  expansionFactor: 2,
                  // strokeWidth: 5,
                ),
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}



//New route(screen or page

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
                          builder: (context)=>AccessPage2()
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

class AuthorizationPage2 extends StatelessWidget {
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
                  child: Image.asset('assets/AccessPage2.png'),
                ),
                 Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children: const <Widget>[
                      Text('Ваше имя',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),)
                    ],
                  ),


                ),
                 Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
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
                 Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
                  child:
                  TextField(
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
                          builder: (context)=>AccessPage2()
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

class AccessPage2 extends StatelessWidget {
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
                  child: Image.asset('assets/AccessPage2.png'),
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
                          builder: (context)=>AccessPage2()
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



