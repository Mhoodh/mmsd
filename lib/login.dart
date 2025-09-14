import 'package:flutter/material.dart';
import 'package:laringfarstapp/mainff.dart';
import 'package:laringfarstapp/singup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                " انشاء  حساب جديد",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.all(5)),
          Container(
            padding: EdgeInsetsDirectional.all(7),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hint: Text("الاسم الكامل", textAlign: TextAlign.end),
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.all(5)),
          Container(
            padding: EdgeInsetsDirectional.all(7),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hint: Text("اللقب", textAlign: TextAlign.end),
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.all(5)),
          Container(
            padding: EdgeInsetsDirectional.all(7),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hint: Text("تاريخ الميلاد", textAlign: TextAlign.end),
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.all(5)),
          Container(
            padding: EdgeInsetsDirectional.all(7),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hint: Text("الجنس", textAlign: TextAlign.end),
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,

                  suffixIcon: Icon(Icons.arrow_drop_down),
                ),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.all(5)),
          Container(
            padding: EdgeInsetsDirectional.all(7),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hint: Text("الاسم الكامل", textAlign: TextAlign.end),
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.all(5)),
          Container(
            padding: EdgeInsetsDirectional.all(7),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hint: Text(" +964 000 000 0000", textAlign: TextAlign.end),
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.all(5)),
          Container(
            padding: EdgeInsetsDirectional.all(7),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hint: Text("كلمة المرور", textAlign: TextAlign.end),
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                  suffixIcon: Icon(Icons.lock),
                  prefixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
          ),
          Container(padding: EdgeInsetsDirectional.only(top: 20)),

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
                ).push(MaterialPageRoute(builder: (context) => Magnifier()));
              },
              child: Text(
                "اشترك",
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Singup()));
                },
                child: Text(
                  "تسجيل الدخول ",
                  style: TextStyle(color: Colors.cyanAccent),
                ),
              ),
              Container(padding: EdgeInsetsDirectional.only(top: 10)),
              Container(child: Text("هل ترغب  لديك حساب")),
            ],
          ),
        ],
      ),
    );
  }
}
