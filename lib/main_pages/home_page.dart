import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/localization/demo_localizations.dart';
import 'package:oneunion/main_pages/favourites.dart';
import 'package:oneunion/main_pages/forum.dart';
import 'package:oneunion/main_pages/my_friends.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'all_subjects.dart';
import 'profile.dart';
import 'question_page.dart';
import 'settings.dart';
import 'subscription.dart';
import 'chat_screen.dart';
import 'statistics.dart';

class HomePage extends StatefulWidget  {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late Animation<double>animation;
  late Animation<double>animation2;
  late AnimationController animController;
  bool isForward=false;

  @override
  void initState(){
    super.initState();
    animController=AnimationController(
        duration: Duration(milliseconds: 200),vsync: this);
    final curvedAnimation =
    CurvedAnimation(parent: animController, curve: Curves.easeOutCubic);
    animation=Tween<double>(begin: 0,end:350).animate(curvedAnimation)
      ..addListener(() {
        setState(() {
        });
      });
    animation2=Tween<double>(begin: 0,end:56).animate(curvedAnimation)
      ..addListener(() {
        setState(() {
        });
      });
  }
  bool menuButton=true;
  EdgeInsets drawingText=EdgeInsets.all(10);
  final controller = PageController(viewportFraction: 1, keepPage: true);
  final subjectController = PageController(viewportFraction: 1, keepPage: false,);
   b(bool c){
     setState(() {
       menuButton= c;
     });
     debugPrint("$c");
   }
  @override
  Widget build(BuildContext context) {
    final getTranslated = DemoLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        elevation: 0,
        centerTitle: true,
        leadingWidth: 56-animation2.value,
        automaticallyImplyLeading: menuButton,
        titleSpacing: 0,
        title:  Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
          child:Stack(
            children:  <Widget>[
          Row(
          children:  [
              Padding(
              padding: const EdgeInsets.all(10),
          child: Text(getTranslated.getTranslatedValue('mainAppBar') ??'Привет, Ануар 👋',
            style: const TextStyle(

              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ],
      ),
              search(),
//              SearchButton(),
            ],
          ),
        ),
//        backgroundColor: Colors.green[600],
      ),
      drawer: Drawer(
        child:
        Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
//                color: HexColor("#FFAC71"),
              gradient: LinearGradient(
                end: Alignment.topRight,
                begin: Alignment.bottomLeft,
                colors: [
                  HexColor("FF8450"),
                  HexColor("FFAC71"),
                ],)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children:  <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(2),
                                  child: InkWell(
                                      child: Text("Ануар", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                                      onTap: (){
                                        Navigator.push(context, CupertinoPageRoute(
                                            builder: (context)=>Profile()
                                        ));
                                      },
                                  ),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Text(getTranslated.getTranslatedValue('subscription') ??"Подписка активна ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12),),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("до 26.11.2022", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 7),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: drawingText,
                              child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>My_friends()));
                                  },
                                  child: Text(getTranslated.getTranslatedValue('friends') ??"Мои друзья               +3", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)

                              ),
                            ),
                            Padding(
                              padding: drawingText,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>Subscription()));
                                },
                                  child: Text(getTranslated.getTranslatedValue('subs') ??"Подписка", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                              ),
                            ),
                            Padding(
                              padding: drawingText,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, CupertinoPageRoute(builder:(context)=>Statistics()));
                                },
                                  child: Text("Статистика", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                              ),
                            ),
                            Padding(
                              padding: drawingText,
                              child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>Favourites()));
                                  },
                                  child: Text(getTranslated.getTranslatedValue('fav') ??"Избранное", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(context, CupertinoPageRoute(builder: (context)=>Forum()));
                              },
                              child: Padding(
                                padding:  drawingText,
                                child: Text("Форум", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                              ),
                            ),
                            Padding(
                              padding: drawingText,
                              child:
                              InkWell(child: Text(getTranslated.getTranslatedValue('params') ??"Настройки", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                                onTap: (){
                                  Navigator.push(context, CupertinoPageRoute(
                                      builder: (context)=>Settings()
                                  ));
                                },
                              ),
                            ),
                            Padding(
                              padding: drawingText,
                              child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>ChatScreen()));
                                  },
                                  child: Text(getTranslated.getTranslatedValue('support') ??"Служба поддержки", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: drawingText,
                              child:
                              Text(getTranslated.getTranslatedValue('blackTheme') ??"Темная тема", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                            ),
                            Padding(
                              padding: drawingText,
                              child: Switch(
                                value: true,
                                onChanged: (value) {
                                  setState(() {
//                                  isSwitched = value;
//                                  print(isSwitched);
                                  });
                                },
                                activeTrackColor: Colors.yellow,
                                activeColor: Colors.orangeAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.zero,
                  child: Image.asset('assets/DrawerImage.png'),
                ),
              ],
            ),
          ),
        ),
      ),
//      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
                                        child:  Text(getTranslated.getTranslatedValue('important') ??'Важно!',
                                            textAlign: TextAlign.start,
                                            style:TextStyle(
                                              color:Colors.white,
                                            )
                                        ),
                                      ),
                                    ),
                                     Padding(
                                      padding:const  EdgeInsets.fromLTRB(10, 15, 10, 25),
                                      child: Text(
                                        getTranslated.getTranslatedValue('regulations') ??'Обновленные правила '
                                            'сдачи ЕНТ в Казахстане',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                     Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        getTranslated.getTranslatedValue('more') ??'Подробнее',
                                        style: const TextStyle(
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
                      child:  Text(
                        getTranslated.getTranslatedValue('setFullTest') ??'Сдать полный тест',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
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
                               Padding(
                                padding:const  EdgeInsets.fromLTRB(20, 35, 20, 10),
                                child: Text(
                                  getTranslated.getTranslatedValue('fullTest') ??'Полный тест ЕНТ',
                                  textAlign: TextAlign.start,
                                  style:const TextStyle(
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
                                  children:  <Widget>[
                                    const Padding(padding: EdgeInsets.only(right: 10),
                                        child:Icon(Icons.access_time,color: Colors.white,size: 18,)
                                    ),
                                    Padding(padding: EdgeInsets.all(0),
                                      child:Text(
                                        getTranslated.getTranslatedValue('time') ?? 'На выполнение: 4 часа',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
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
                                padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
                                child: Row(
                                  children:  <Widget>[
                                   const Padding(padding: EdgeInsets.only(right: 10),

                                        child:Icon(Icons.book,color: Colors.white,size: 18,)
                                    ),
                                    Padding(padding: EdgeInsets.all(0),
                                      child:Text(
                                        getTranslated.getTranslatedValue('subjects') ?? 'Предметы: 3 стандартных + 2 на выбор',
                                        textAlign: TextAlign.start,
                                        style:const  TextStyle(
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
                                  children:  <Widget>[
                                   const Padding(padding: EdgeInsets.only(right: 10),
                                        child:Icon(Icons.language,color: Colors.white,size: 18,)
                                    ),
                                    Padding(padding: EdgeInsets.all(0),
                                      child:Text(
                                        getTranslated.getTranslatedValue('languages') ?? 'Языки: казахский, русский',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
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
                         Text(
                          getTranslated.getTranslatedValue('subjectTest') ?? 'Тест по предметам',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        InkWell(
                          child:  Text(
                            getTranslated.getTranslatedValue('all') ?? 'Все',
                            textAlign: TextAlign.start,
                            style:const TextStyle(
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
                     Text(
                      getTranslated.getTranslatedValue('competition') ?? 'Соревнуйся с друзьями',
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
  Widget search(){
    return IntrinsicWidth(
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: animation.value,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  )
              ),
              child:
              const Padding(
                padding: EdgeInsets.only(left: 20,bottom: 5),
                child: TextField(
                  cursorColor: Colors.white12,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration:InputDecoration(
//                      prefixIcon: new Icon(Icons.search,color: Colors.white,),
//                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.white)
                  ),
                ),
              ),
            ),
            Container(
              width: 50,
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: animation.value>1 ? const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50)
                  ):BorderRadius.circular(50)
              ),
              child:  InkWell(
                  onTap: (){
                    setState(() {
                      if(!isForward){
                        animController.forward();
                        isForward=true;
                        b(false);
                      }
                      else{
                        animController.reverse();
                        isForward=false;
                        b(true);
                      }
                    });
                  },
                  child: const Icon(
                    Icons.search,
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


