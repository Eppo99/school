import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FAQ extends StatefulWidget {

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {

  List featuresText=[
    "Не могу найти необходимый предмет ",
    "Как добавить друга в режим соревнования?",
    "Какие условия для возврата подписки? ",
    "Как добавить вопрос в избранное?",
    "Не могу зарегистрироваться как клиент,что делать?",
    "Какие правила у платформы BoBo для клиента? ",
    "Почему не все решения есть для задач? "
  ];

  TextStyle mainBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 20);
  TextStyle lessBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 18);
  TextStyle thinText= const TextStyle(fontWeight: FontWeight.w500,fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Text("FAQ",style: mainBold,),
                    ),
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 25,bottom: 9),
                        child: Text("Часто задаваемые вопросы",style: lessBold,),
                      ),
                      for(int i=0;i<featuresText.length;i++)
                        Column(
                          children: [
                            ExpansionTile(
                                title: Text('${featuresText[i]}',style: thinText,),
                                tilePadding: EdgeInsets.only(bottom: 0),
                                childrenPadding: EdgeInsets.zero,
                                children: [
                                  ListTile(
                                    title: Text('${featuresText[i]}',style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                                  ),
                                ]
                            ),
                            Divider(height: 0,thickness: 1,),


                          ],
                        ),


                    ],
                  ),//about subscription
                  Padding(padding: EdgeInsets.only(left: 20,top: 70),
                      child:
                      RichText(
                        text:  TextSpan(
                          text: 'Остались  вопросы? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                          children:  <TextSpan>[
                            TextSpan(text: 'Свяжитесь с нами', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xFFFF734A),
                            )
                            ),
                          ],
                        ),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                      )
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
