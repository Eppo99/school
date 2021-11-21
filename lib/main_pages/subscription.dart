import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'promocode.dart';
import 'payment.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'package:oneunion/my_tools/hex_color.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {

  List featuresText=[
    "Возможность сдачи полного теста",
    "Возможность сдачи теста по предметам",
    "Соревнование с другом",
    "Доступ к форуму с задачами",
    "Доступ к решениям задач",
    "Более 20 тысяч вариантов",
    "Доступ на 1 месяц"
  ];

  TextStyle mainBold=const TextStyle(fontWeight: FontWeight.w700,fontSize: 20);

  TextStyle lessBold=const TextStyle(fontWeight: FontWeight.w600,fontSize: 18);
  TextStyle Bold16=const TextStyle(fontWeight: FontWeight.w700,fontSize: 16);
  TextStyle thinText= const TextStyle(fontWeight: FontWeight.w400,fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Text("Подписки",style: mainBold,),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: HexColor("FF7648"),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("₸",style: TextStyle(fontSize: 25,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w900),),
                                Text("2490",style: TextStyle(fontSize: 50,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w700),)
                              ],
                            ),
                            Text("/месяц.",style: TextStyle(fontSize: 16,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      Text("сэкономь 6500 ",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 12,fontWeight: FontWeight.w400),),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor.withOpacity(0.35),
                            border: Border.all(width: 4,color: Colors.white.withOpacity(0.0)),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: ToggleSwitch(
                              minWidth: 110.0,
                            cornerRadius: 14.0,
                            fontSize: 18.0,
                            activeBgColor: [Theme.of(context).primaryColor],
                            activeFgColor: Colors.black,
                            inactiveBgColor: Colors.white.withOpacity(0.0),
                            inactiveFgColor: Colors.black.withOpacity(0.40),
                            totalSwitches: 3,
                            labels: ['1 месяц', '6 месяцев','1 год'],
                            radiusStyle: true,
                            customTextStyles: [
                              for(int i=0;i<3;i++)
                              TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600),
                            ],
                            onToggle: (index) {
                              print('switched to: $index');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),//Sound

              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 9),
                    child: Text("Что вы получите?:",style: lessBold,),
                  ),
                  for(int i=0;i<featuresText.length;i++)
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:6.0,vertical: 4),
                          child: Icon(Icons.check,color: HexColor("0165BC"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:6.0,vertical: 4),
                          child: Text("${featuresText[i]}"),
                        )
                      ],
                    ),

                ],
              ),//about subscription
              const Padding(padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                child:
                SizedBox(
                  width: 300,
                  child: Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child:
                    TextField(
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "ввести промокод",
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
                ),



              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text("Накоплено баллов: 500",style: thinText,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Text("Использовать",style: thinText,),
                            Switch(value: false, onChanged:(value){},)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text("Итого: 8440 ₸",style: thinText,),
                      ),
                    ],
                  ),
                ],
              ),//
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  child:  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Купить подписку",
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
                  textColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color:Color(0xFFFF734A) )),
                  onPressed: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (context)=>Payment()
              )
              ); //Navigator
                  }, //onPressed

                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
