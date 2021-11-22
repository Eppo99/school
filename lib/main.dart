import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'access_pages/access_page.dart';
import 'main_pages/home_page.dart';
import 'main_pages/about.dart';
import 'main_pages/my_friends.dart';
import 'main_pages/settings.dart';

void main() {
//  runApp( MyApp());
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
//    primaryColor: Colors.red[200],
//      scaffoldBackgroundColor: Colors.white,
//      appBarTheme: AppBarTheme(
//        titleTextStyle: TextStyle(color: Colors.black),
//        backgroundColor: HexColor("#fafafa") ,
////        color: ,
//        iconTheme: IconThemeData(color: Colors.black)
//      ),


    ),

    title: 'Navigation Basics',
    home: HomePage(),
  ));
}

class HelloPage extends StatefulWidget {
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
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
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 80),
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
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 80),
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
                        const Text("Далее",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),

                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.fromLTRB(25, 5, 5, 5),
                          decoration: const BoxDecoration(
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

              ), //Button далее
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


