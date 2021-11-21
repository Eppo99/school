import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import '../my_tools/hex_color.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  TextStyle smallTextStyle= TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: HexColor("989898"));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40,bottom: 40),
                  child: Text("Оплата",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children:  <Widget>[
                      Text('Номер карты',
                        textAlign: TextAlign.left,
                        style: smallTextStyle,)
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
                  child:
                  TextField(
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children:  <Widget>[
                      Text('Срок действия',
                        textAlign: TextAlign.left,
                        style: smallTextStyle,)
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
                  child:
                  TextField(
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children:  <Widget>[
                      Text('СVC/CVV',
                        textAlign: TextAlign.left,
                        style: smallTextStyle,)
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
                  child:
                  TextField(
                    style: TextStyle(fontSize: 20),
                  ),
                ),



                Padding(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  <Widget>[
                      Container(
                        width: 200,
                        child:  Text('Платеж безопасен. Cloud Payments платежная система, сертифицированная PCI DSS.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: HexColor("989898"),
                          ),),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/Visa.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/Master.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/cloud_logo.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/pci-dss-compliant.png"),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: RaisedButton(
                child:  Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Оплатить 2 500 ₸",
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
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color:Color(0xFFFF734A) )),
                onPressed: (){
//              Navigator.push(context, CupertinoPageRoute(
//                  builder: (context)=>AccessPageSms()
//              )
//              ); //Navigator
                }, //onPressed

              ),
            ),
          ],
        ),
      ),
    );
  }
}
