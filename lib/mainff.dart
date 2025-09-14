import 'package:flutter/material.dart';
import 'package:laringfarstapp/notfvction.dart';
import 'package:laringfarstapp/specialist.dart';

class Mainff extends StatefulWidget {
  const Mainff({super.key});

  @override
  State<Mainff> createState() => _MainffState();
}

class _MainffState extends State<Mainff> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: MaterialButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Notfvction()));
            },
            child: Text(
              "الاشعارات",
              style: TextStyle(
                fontSize: 23,
                color: const Color.fromARGB(255, 0, 149, 255),
              ),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Specialist()));
          },
          child: Text(
            "الاخصائي",
            style: TextStyle(
              fontSize: 23,
              color: const Color.fromARGB(255, 0, 149, 255),
            ),
          ),
        ),
      ],
    );
  }
}
