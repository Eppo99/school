import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import 'faq.dart';
import 'about.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextStyle mainBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 20);

  TextStyle lessBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 18);
  TextStyle thinText= TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: HexColor("FF7648"),decoration: TextDecoration.underline);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 25,right: 25),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Text("Настройки",style: mainBold,),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text("Звук",style: lessBold,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Switch(
                      inactiveTrackColor: HexColor("FF7648"),
                      inactiveThumbColor: Colors.white,
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
              ),//Sound
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text("Язык интерфейса",style: lessBold,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Switch(
                      inactiveTrackColor: HexColor("FF7648"),
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
              ),//language
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text("О проекте:",style: lessBold,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16,left: 10),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        RichText(
                          text:   TextSpan(
                            text: 'BoBo',
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xFFFF734A)),
                            children:   <TextSpan>[
                          TextSpan(
                          text: ' всегда рад рассказать о себе.\nПервая идея появилась ещё в 2020 году.\nНасколько мы реально полезны\nученикам? Узнать подробнее можете ',
                            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Theme.of(context).colorScheme.onBackground),),
                            TextSpan(text: 'тут', style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xFFFF734A),
                            ),
                              ),
                            ],
                          ),
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                        ),
                        InkWell(onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>About()));
                        }, child: Text('тут', style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFFFF734A),
                        ),),
                        )
                      ],
                    ),
                  ),


                ],
              ),//about project
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("FAQ:",style: lessBold,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16,left: 10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        RichText(
                          text:   TextSpan(
                            text: 'BoBo',
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xFFFF734A)),
                            children:   <TextSpan>[
                              TextSpan(
                                text: ' готов ответить на любые\nинтересующие вас вопросы. Узнать\nдетальный ответ на часто задаваемые\nвопросы вы можете  ',
                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Theme.of(context).colorScheme.onBackground),),
                              TextSpan(text: 'тут', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFFFF734A),
                              ),
                              ),
                            ],
                          ),
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                        ),
                        InkWell(onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>FAQ()));
                        }, child: const Text('             тут', style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFFFF734A),
                        ),),
                        )
                      ],
                    ),
                  ),


                ],
              ),//FAQ

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Остальное:",style: lessBold,),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Оценить приложение",style: thinText,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Политика конфидециальности",style: thinText,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Пользовательское соглашение ",style: thinText,),
                          ),
                        ],
                      ),
                  ),

                ],
              ),//others
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.logout,size: 40,color: HexColor("FF7648"),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Выйти с профиля",style: lessBold,),
                    ),
                  ],
                ),
              ),//out
            ],
          ),
        ),
      ),
    );
  }
}
