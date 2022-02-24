import 'package:flutter/material.dart';
import 'package:testing_project/Button.dart';
import 'package:testing_project/InputWidget.dart';
import 'RegisterScreen.dart';

class JobListing extends StatelessWidget {
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
            const Text("Welcome\n", style:  TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700,)),
            const Text("Hur Abbas", style:  TextStyle( color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300,)),
            const SizedBox(height: 31),
            const InputTextField(placeholder: "Enter position name"),
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
                decoration: InputDecoration(hintText: "Describe Requirement...", hintStyle: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15), border: InputBorder.none),
              ),
            ),
          ),
            const Spacer(),
            const SizedBox(height: 11),
            AppButton(label: "Submit Job", onPress: OnSubmitJobPress),


          ],
        ),
      ),
    );
  }
  void OnSubmitJobPress(){

  }
}
