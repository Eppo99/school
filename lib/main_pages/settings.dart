import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/hex_color.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextStyle mainBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 20);

  TextStyle lessBold=const TextStyle(fontWeight: FontWeight.w600,fontSize: 18);
  TextStyle Bold16=const TextStyle(fontWeight: FontWeight.w700,fontSize: 16);
  TextStyle thinText= TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: HexColor("FF7648"));




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 30,right: 30),
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
                    padding: const EdgeInsets.all(8.0),
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
                    padding: const EdgeInsets.all(8.0),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text("О проекте:",style: lessBold,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child:
                      Text("BoBo всегда рад рассказать о себе. Первая идея появилась ещё в 2020 году. Насколько мы реально полезны ученикам? Узнать подробнее можете тут",
                      style: Bold16,
                      )
                  ),

                ],
              ),//about project
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("FAQ",style: lessBold,),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child:Text("BoBo готов ответить на любые интересующие вас вопросы. Узнать детальный ответ на часто задаваемые вопросы вы можете тут",
                        style: Bold16,
                      )
                  ),

                ],
              ),//FAQ
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.only(top: 55),
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
