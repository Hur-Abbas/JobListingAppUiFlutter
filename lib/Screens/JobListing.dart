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
        padding: const EdgeInsets.only(top: 79, left:27, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome", style:  TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700,)),
            Row(
              children: const [
                Text("Hur Abbas", style:  TextStyle( color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300,)),
                SizedBox(width: 162),
                Icon(
                  Icons.account_circle ,
                  color: Colors.white,
                  size: 26,
                ),
              ],
            ),
            const SizedBox(height: 19),
          Container(
            margin: const EdgeInsets.only(top:20),
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
            decoration: BoxDecoration(
                color: const Color(0xFF1E1C24),
                border: Border.all(color:const Color(0xFF5D5D67)),
                borderRadius: BorderRadius.circular(15)
            ),
            child: const TextField(
              style: TextStyle(color: Colors.white, height: 1.5, fontSize: 15),
              decoration: InputDecoration( prefixIcon: Icon(Icons.search, color: Color(0xFF5D5D67), size: 23), hintText: "Search keywords..", hintStyle: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15), border: InputBorder.none),
            ),
          ),



          ],
        ),
      ),
    );
  }
  void OnSubmitJobPress(){

  }
}
