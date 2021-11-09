import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import '../my_tools/hex_color.dart';


class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}
class _QuestionPageState extends State<QuestionPage> {
  int _currentQuestionIndex = 0;
  List variantColor =[
    for(int i=0;i<5;i++)
      Colors.white
  ];
  List alphabet= [
    "a.",
    "b.",
    "c.",
    "d.",
    "e.",
  ];
  List questionBank= [
    Question.name("Егер Санжардың туған күні 5-ке және 3-ке еселік жұп сан екені белгілі болса, онда Санжардың туған күнін табыңыз:",
        false,
        ["26",
          "21",
          "30",
          "10",
          "15"
        ]
    ),
    Question.name("Түрік қағанаты екіге бөлінеді:",
        false,
        ["XX",
          "XV",
          "IX",
          "XIX",
          "XII"
        ]
    ),
    Question.name("Жамбыл облысындағы 5мыңға жуық тас құралдар табылған тұрақтар",
        false,
        ["Покровка",
          "Алтын емель",
          "Аксу Жабагылы",
          "Алматы",
          "Тараз"
        ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Builder(
          builder: (BuildContext context) =>Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Center(
                    child: Image.asset('assets/Saly2.png',
                      width:200,
                      height: 200,
                    )
                ),
                Container(
                  height: 120.0,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.4),
                      border: Border.all(
                        color: Colors.blueGrey,
                        style: BorderStyle.solid,
                      )
                  ),
                  child: Text(
                    questionBank[_currentQuestionIndex].questionText,
                    style: TextStyle(
                      color: Colors.white,
                    ),

                  ),
                ),
                Center(
                  child: CircleAvatar(
                    child: Text("$_currentQuestionIndex"),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    for(int i=0;i<5;i++)
                      Container(
                        margin: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: variantColor[i],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child:
                        Padding(
                          child: RaisedButton(onPressed: (){
                            changeColor(i);
                            return _checkAnswer(questionBank[_currentQuestionIndex].variants[i],context);
                          },
                            elevation: 0,
                            color: variantColor[i],
                            child:
                            Row(
                              children: [
                                Text("${alphabet[i]}  ${questionBank[_currentQuestionIndex].variants[i]}"),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(2),
                        ),
                      ),
//                RaisedButton(onPressed: ()=> _checkAnswer(false,context),
//                  color: HexColor('FF7648'),
//                  child: Text("False"),
//                ),
                    RaisedButton(onPressed: ()=> _nextQuestion(),
                      color: HexColor('FF7648'),
                      child: Icon(Icons.arrow_forward,color: Colors.white,
                      ),
                    ),
                    RaisedButton(onPressed: ()=> _prevQuestion(),
                      color: HexColor('FF7648'),
                      child: Icon(Icons.arrow_back,color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
  _checkAnswer(String userChoise, BuildContext context){
    if(userChoise ==questionBank[_currentQuestionIndex].variants[0]){
      final snackbar= SnackBar(content: Text("Correct!"));
      Scaffold.of(context).showSnackBar(snackbar);
      debugPrint("Yes Correct!");
    }
    else{
      debugPrint("Incorrect");
      final snackbar= SnackBar(content: Text("Incorrect!"));
      Scaffold.of(context).showSnackBar(snackbar);
    }
  }
  _updateQuestion(){
    setState(() {
      _currentQuestionIndex=(_currentQuestionIndex+1)%questionBank.length;
    });
  }
  _nextQuestion(){
    setState(() {
      _currentQuestionIndex=(_currentQuestionIndex+1)%questionBank.length;
      for(int i=0;i<5;i++)
        variantColor[i]=Colors.white;
    });
  }
  _prevQuestion(){
    setState(() {
      if(_currentQuestionIndex>0)
        _currentQuestionIndex=(_currentQuestionIndex-1)%questionBank.length;
    });
  }
  void changeColor(int currentVariant) {
    setState(() {
      for(int i=0;i<5;i++)
        variantColor[i]=Colors.white; //To make white all variants
      variantColor[currentVariant]=HexColor("FF7648");
    });
  }
}
class Question{
  List variants=[
    "",
    "",
    "",
    "",
    ""
  ];
  String questionText;
  bool  iscorrect;
  Question.name(this.questionText,this.iscorrect,this.variants);
}

