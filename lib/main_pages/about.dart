import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import '../E_Widgets/BackButtonE.dart';



class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 60,bottom: 26),
                  child: Text("О нас",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                ),
//                backButton(context),
                Padding(padding: EdgeInsets.all(20),
                  child: Image.asset('assets/about.png'),
                ),

                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  <Widget>[
                      Container(
                        width: 330,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  <Widget>[
                            RichText(
                              text:   TextSpan(
                                text: 'BoBo',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xFFFF734A),
                                ),

                                children:  <TextSpan>[
                                  TextSpan(text: '- первый в Казахстане сборник тестов по ЕНТ с подробными решениями.', style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Theme.of(context).colorScheme.onBackground,
                                  )
                                  ),
                                ],
                              ),
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                            ),
                            Text(
                            "\nПриложение дает возможность выбрать определенный предмет из 16 существующих или пройти полный тест по всем пяти предметам ЕНТ.\n"
                            "\nСамое главное - ученики не только могут сделать анализ по ответам, но и посмотреть решение каждой задачи.\n"
                            "\nТакая уникальная методика подготовки к ЕНТ позволит набрать выпускникам наивысший балл!\n",
                              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.all(8),
                              child: TextButton(
                                child: const Text("Наш инстаграм",style:  TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFFFF734A),
                                    decoration: TextDecoration.underline
                                ),),
                                onPressed: (){},
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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

