import 'package:flutter/material.dart';
import 'package:testing_project/Button.dart';
import 'package:testing_project/InputWidget.dart';
import 'LoginScreen.dart';
import 'AddJob.dart';
import 'EditJob.dart';
import 'JobListing.dart';

class RegisterScreen extends StatelessWidget {
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
            const Text("Let's sign you up", style: TextStyle( color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600,)),
            const SizedBox(height: 14),
            const Text("Welcome \nJoin the community!", style: TextStyle( color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400,)),
            const SizedBox(height: 47),
            const InputTextField(placeholder: "Enter yur full name"),
            const InputTextField(placeholder: "Enter your email address"),
            const InputTextField(placeholder: "Enter your password"),
            const Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Already have an account ?", style: TextStyle( color: Color(0xFF8F8F9E), fontSize: 15, fontWeight: FontWeight.w400,  )),
                  Text("Sign In", style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 15, fontWeight: FontWeight.w400,  )),
                ],
              ),
            ),
            const SizedBox(height: 11),
            AppButton(label: "Sign Up", onPress: OnSignUpPress),


          ],
        ),
      ),
    );
  }
  void OnSignUpPress(){
  }
}

