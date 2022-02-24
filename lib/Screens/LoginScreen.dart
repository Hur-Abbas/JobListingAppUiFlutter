import 'package:flutter/material.dart';
import 'package:testing_project/Button.dart';
import 'package:testing_project/InputWidget.dart';
import 'RegisterScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top: 110, left:27, right: 27,bottom: 59),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let's sign you in", style: TextStyle( color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600,)),
            const SizedBox(height: 14),
            const Text("Welcome back \nyou’ve been missed !", style: TextStyle( color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400,)),
            const SizedBox(height: 47),
            const InputTextField(placeholder: "Enter your email address"),
            const InputTextField(placeholder: "Enter your password"),
            const Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => RegisterScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Dont have Account ?", style: TextStyle( color: Color(0xFF8F8F9E), fontSize: 15, fontWeight: FontWeight.w400,  )),
                  Text("Register", style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 15, fontWeight: FontWeight.w400,  )),
                ],
              ),
            ),
            SizedBox(height: 11),
            AppButton(label: "Sign In ", onPress: OnLoginPress),


          ],
        ),
      ),
    );
  }
  void OnLoginPress(){

  }
}
