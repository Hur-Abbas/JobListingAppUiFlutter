import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testing_project/Button.dart';
import 'package:testing_project/InputWidget.dart';
import 'RegisterScreen.dart';

class EditJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top: 110, left:27, right: 27,bottom: 59),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 24,
                ),
                SizedBox(width: 15),
                Text("Edit Job", style: TextStyle( color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600,)),
              ],
            ),
            const SizedBox(height: 31),
            const InputTextField(placeholder: "Flutter Developer"),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
            child: Container(
              height: 260,
              margin: const EdgeInsets.only(top:20),
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  color: const Color(0xFF1E1C24),
                  border: Border.all(color:const Color(0xFF5D5D67)),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white , fontSize: 15),
                decoration: InputDecoration(hintText: "Lorem ipsum dolor sit amet, consectetur...", hintStyle: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15), border: InputBorder.none),
              ),
            ),
          ),
            const Spacer(),
            const SizedBox(height: 11),
            AppButton(label: "Update Job", onPress: OnEditJobPress),


          ],
        ),
      ),
    );
  }
  void OnEditJobPress(){

  }
}
