import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/localization/demo_localizations.dart';
import 'package:oneunion/my_tools/hex_color.dart';

import '../language.dart';
import '../main.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  TextStyle mainBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 20);

  TextStyle lessBold=const TextStyle(fontWeight: FontWeight.w600,fontSize: 18);
  TextStyle Bold16=const TextStyle(fontWeight: FontWeight.w700,fontSize: 16);
  TextStyle thinText= TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: HexColor("FF7648"));

  void changeLanguage(Language language){
    Locale _temp;
    switch(language.languageCode){
      case 'ru':
        _temp = Locale(language.languageCode, 'RU');
        break;
      case 'kk':
        _temp = Locale(language.languageCode, 'KK');
        break;
      default:
        _temp = Locale(language.languageCode, 'RU');
    }

    MyApp.setLocale(context, _temp);
  }

  @override
  Widget build(BuildContext context) {
    final getTranslated = DemoLocalizations.of(context);
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
                  child: Text(getTranslated.getTranslatedValue('appBar') ??'Настройки',style: mainBold,),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(getTranslated.getTranslatedValue('sound') ?? "Звук",style: lessBold,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Switch(
                      inactiveTrackColor: HexColor("FF7648"),
                      inactiveThumbColor: Colors.white,
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          MyApp.setLocale(context, Locale(value.toString(), ''));
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
                    child: Text(getTranslated.getTranslatedValue('language')??"Язык интерфейса",style: lessBold,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: DropdownButton(
                      onChanged: (Language? language){
                        changeLanguage(language!);
                      },
                      icon: Icon(Icons.language, color: Colors.black,),
                      underline: SizedBox(),
                      items: Language.languageList().map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                        value: lang,
                        child: Text(lang.name),
                      )).toList(),
                    )
                  ),

                ],
              ),//language
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(getTranslated.getTranslatedValue('project') ?? "О проекте:",style: lessBold,),
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
                    child: Text(getTranslated.getTranslatedValue('others')??"Остальное:",style: lessBold,),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(getTranslated.getTranslatedValue('setStar')??"Оценить приложение",style: thinText,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(getTranslated.getTranslatedValue('policy')??"Политика конфидециальности",style: thinText,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(getTranslated.getTranslatedValue('terms')??"Пользовательское соглашение ",style: thinText,),
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
