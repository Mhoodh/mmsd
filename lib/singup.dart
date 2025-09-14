import 'package:flutter/material.dart';
import 'package:laringfarstapp/homepage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:laringfarstapp/mainff.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  String? county;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  Future<void> loginUser() async {
    if (phoneController.text.isEmpty || passwordController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('يرجى ملء جميع الحقول')));
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse('http://192.168.40.76:4000/api/login'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'phone': phoneController.text.trim(),
          'password': passwordController.text.trim(),
        }),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        // Login successful
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => Homepage()));
      } else {
        // Login failed
        final responseData = json.decode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(responseData['message'] ?? 'فشل تسجيل الدخول'),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('خطأ في الاتصال بالخادم')));
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

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
            "تسجيل الدخول لحسابك",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Container(padding: EdgeInsets.only(top: 15)),
          Container(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 30,
              vertical: 5,
            ),
            child: TextField(
              controller: passwordController,
              obscureText: true,
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

          Container(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 30,
              vertical: 5,
            ),
            child: TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hint: Text(" +964 000 000 0000", textAlign: TextAlign.end),
                border: InputBorder.none,
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
          RadioListTile(
            title: Text("تذكرني"),
            value: "تذكرني",
            groupValue: county,
            onChanged: (val) {
              setState(() {
                county = val;
              });
            },
          ),
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
                ).push(MaterialPageRoute(builder: (context) => Mainff()));
              },
              child: isLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text(
                      "تسجيل الدخول ",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
            ),
          ),
          Text(
            "هل نسيت تسجيل الدخو",
            style: TextStyle(
              fontSize: 23,
              color: const Color.fromARGB(255, 115, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
