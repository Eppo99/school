import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'all_subjects.dart';
import 'question_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  Widget appBarText=   Row(
    children: [
      const Padding(
        padding: EdgeInsets.all(5),
        child: Icon(
          Icons.menu,
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text('Привет, Ануар 👋',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
  ) ;

  final controller = PageController(viewportFraction: 1, keepPage: true);
  final subjectController = PageController(viewportFraction: 1, keepPage: false,);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child:Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  <Widget>[
                    appBarText,
                    SearchButton(),

//                    Container(
////                        margin: EdgeInsets.only(left: 200),
//                        child: SearchButton()
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.all(5),
//                      child:  FloatingActionButton(
//                        elevation: 0,
//                        child:
////                        const Icon(
////                          Icons.search,
////                          color: Colors.black,
////                        ),
//                        backgroundColor: const Color.fromRGBO(255, 115, 74, 0.1),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(20),),
//                        onPressed: (){ //searchButton
////                          if(controller.page==2 ){
////                            Navigator.push(context, CupertinoPageRoute(
////                                builder: (context)=>AccessPage1()));
////                          }
//                        },
//                      ),
//                    )
                  ],
                ),
              ), //1st row search
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return
                      Padding(
                        padding: const EdgeInsets.fromLTRB(28, 7, 28, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(255, 115, 74, 0.1),
                          ),
                          child:Stack(
                            children: <Widget>[
                              SizedBox(
                                width: 210,
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:const EdgeInsets.all(10),
                                      child:
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(255, 55, 95, 1),
                                          borderRadius: BorderRadius.all(Radius.circular(80)),
                                        ),
                                        child: const Text('Важно!',
                                            textAlign: TextAlign.start,
                                            style:TextStyle(
                                              color:Colors.white,
                                            )
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(10, 15, 10, 25),
                                      child: Text(
                                        'Обновленные правила '
                                            'сдачи ЕНТ в Казахстане',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Подробнее',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(220, 20, 0, 10),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Image.asset('assets/Main_1_block1.png',fit:BoxFit.fitHeight)
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    );
                  },
                ),
              ),//2nd carousel
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
              ), //indicator
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     InkWell(
                      child: const Text(
                        'Сдать полный тест',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, CupertinoPageRoute(
                            builder: (context)=>QuestionPage()));
                      },
                    ), //Сдать полный тест
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 7, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/Main_widget3.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(77, 197, 145, 1),
                          ),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 35, 20, 10),
                                child: Text(
                                  'Полный тест ЕНТ',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),//Полный тест ент
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                                child: Row(
                                  children: const <Widget>[
                                    Padding(padding: EdgeInsets.only(right: 10),
                                        child:Icon(Icons.access_time,color: Colors.white,size: 18,)
                                    ),
                                    Padding(padding: EdgeInsets.all(0),
                                      child:Text(
                                        'На выполнение: 4 часа',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),

                                    ),

                                  ],
                                ),

                              ), //Time icon
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 5, 0, 10),
                                child: Row(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(right: 10),

                                        child:Icon(Icons.book,color: Colors.white,size: 18,)
                                    ),
                                    Padding(padding: EdgeInsets.all(0),
                                      child:Text(
                                        'Предметы: 3 стандартных + 2 на выбор',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),

                                    ),

                                  ],
                                ),

                              ), //Book icon
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 5, 0, 10),
                                child: Row(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(right: 10),
                                        child:Icon(Icons.language,color: Colors.white,size: 18,)
                                    ),
                                    Padding(padding: EdgeInsets.all(0),
                                      child:Text(
                                        'Языки: казахский, русский',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),

                                    ),

                                  ],
                                ),

                              ), //Language icon
                            ],
                          ),

                        )
                    ), //Full test
                  ],
                ),
              ),//Pass test
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Тест по предметам',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        InkWell(
                          child: const Text(
                            'Все',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromRGBO(255, 118, 72, 1),
                              fontFamily: 'Poppins',
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, CupertinoPageRoute(
                                builder: (context)=>AllSubjects()));
                          },
                        )
                      ],
                    ),//Тест по предметам
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 7, 20, 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child:
                              ListView(
                                // This next line does the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  for(int i=0;i<AllSubjects().subjects.length;i++)
                                    Container(
                                      margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Text(''),
                                          height: 150,
                                          width: 175,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: AllSubjects().subjectColors[i],
                                          ),
                                        ),
                                        Text(
                                          '${AllSubjects().subjects[i]}',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ),//2nd carousel
                          ],
                        )
                    ), //subjects widget
                  ],
                ),
              ),//subjects top text
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Соревнуйся с друзьями',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ), //Сдать полный тест
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 7, 20, 10),
                        child: Container(
                          width: 400,
                          height: 200,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/Main_widget4.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(77, 197, 145, 1),
                          ),
                        )
                    ), //5th widget
                  ],
                ),
              ),//game widget
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Форум',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ), //Сдать полный тест
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 7, 20, 10),
                        child: Container(
                          width: 400,
                          height: 200,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/Main_widget5.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(77, 197, 145, 1),
                          ),
                        )
                    ), //5th widget
                  ],
                ),
              ),//forum widget
            ],
          ),
        ),
      ),
    );
  }
}





class SearchButton extends StatefulWidget {
  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> with SingleTickerProviderStateMixin {
  late Animation<double>animation;
  late AnimationController animController;
  bool isForward=false;
  @override
  void initState(){
    super.initState();
    animController=AnimationController(
        duration: Duration(milliseconds: 500),vsync: this);
    final curvedAnimation =
    CurvedAnimation(parent: animController, curve: Curves.easeOutSine);
    animation=Tween<double>(begin: 0,end:150).animate(curvedAnimation)
      ..addListener(() {
        setState(() {

        });
      });
  }
  @override
  Widget build(BuildContext context) {
    return
      IntrinsicWidth(
        child: Container(
          color: Colors.transparent,
          width: 100,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: animation.value,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 5),
                  child: TextField(
                    cursorColor: Colors.white12,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration:new  InputDecoration(
//                      prefixIcon: new Icon(Icons.search,color: Colors.white,),
//                      border: InputBorder.none,
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)
                    ),
                  ),
                ),

              ),
              Container(
                width: 50,
                height: 52,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: animation.value>1 ? BorderRadius.only(
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)
                    ):BorderRadius.circular(50)

                ),
                child:  IconButton(
                    onPressed: (){
                      setState(() {
                        if(!isForward){
                          animController.forward();
                          isForward=true;
                          _HomePageState().appBarText=Container(width: 0,);
                        } else{
                          animController.reverse();
                          isForward=false;
                          _HomePageState().appBarText=
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      Icons.menu,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text('Привет, Ануар 👋',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                        }
                      });
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    )

                ),

              ),
            ],
          ),
        ),
      );
  }
}
