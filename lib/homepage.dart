import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:http/http.dart' as http;
import 'package:laringfarstapp/login.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool loding = false;
  List cooo = [
    {"Image": "images/whtch.jpg", 'text': "cher"},
    {"Image": "images/baltsar.jpg", 'text': "mer"},
    {"Image": "images/skechers.jpg", 'text': "wer"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("images/loginImage.png"),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.only(top: 70)),
          Text(
            "هل انت",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Container(padding: EdgeInsetsDirectional.only(top: 60)),
          Container(
            child: MaterialButton(
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 90,
                vertical: 20,
              ),
              color: Colors.cyanAccent,
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => login()));
              },
              child: Text(
                "مستخدم",
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.only(top: 50)),

          Text(
            "-----------------او---------------------",
            style: TextStyle(fontSize: 23, color: Colors.black),
            textDirection: TextDirection.ltr,
          ),
          Container(padding: EdgeInsetsDirectional.only(top: 50)),

          Container(
            child: MaterialButton(
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 90,
                vertical: 20,
              ),
              color: Colors.cyanAccent,
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => login()));
              },
              child: Text(
                " اخصائي",
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*futuer<List>getData()async{
var respons=awite. http.get(
uir.parsin("https://jsonplaceholder.typicode.com/posts");

)
List rsposerbody= jasenDecode(respons.body)}


futer.bulider<list>{
fuer= getDate();
bulder(contect,snpsot);
if( snashot.conactionstaet == concatonstesr.whteng){
retern cernter( ch)}
retern listve.bulder(bontext,i){

}

}
*/