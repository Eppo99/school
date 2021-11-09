import 'package:flutter/material.dart';
import '../my_tools/hex_color.dart';
import 'package:flutter/cupertino.dart';


 class AllSubjects extends StatelessWidget {
  List subjects=[
    "Математика",
    "Физика",
    "География",
    "Химия",
    "Биология",
    "Тарих",
    "Информатика",
    "Геометрия"
  ];
  List subjectColors=[
    HexColor("8F98FF"),
    HexColor("FF734A"),
    HexColor("7DE4D8"),
    HexColor("4DC591"),
    HexColor("B18CFE"),
    HexColor("8F98FF"),
    HexColor("4DC591"),
    HexColor("4DC591"),
  ];
   get subject=>subjects;
  @override
  Widget build(BuildContext context) {
    return
      Material(
        child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
              for(int i=0; i<subjects.length;i+=2)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for(int j=0;j<2;j++)
                      Container(

                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                offset: Offset(0.5, 0.5),
                                blurRadius: 0.5,
                                spreadRadius: 0.8,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, CupertinoPageRoute(
                                    builder: (context)=>AllSubjects()));
                              },
                              child: Container(
                                width: 180,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: subjectColors[i+j],
                                ),
                                child: Text("${subjects[i+j]}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${subjects[i+j]}",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey
                                ),
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
