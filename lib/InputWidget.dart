import 'package:flutter/material.dart';


class  InputTextField extends StatelessWidget {
  final String placeholder;

  const InputTextField({ required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return   Container(
    margin: const EdgeInsets.only(top:20),
    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
    decoration: BoxDecoration(
    color: const Color(0xFF1E1C24),
    border: Border.all(color:const Color(0xFF5D5D67)),
    borderRadius: BorderRadius.circular(15)
    ),
    child: TextField(
    style: const TextStyle(color: Colors.white, height: 1.0, fontSize: 15),
    decoration: InputDecoration(hintText: placeholder, hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15), border: InputBorder.none),
),
);
  }
}
