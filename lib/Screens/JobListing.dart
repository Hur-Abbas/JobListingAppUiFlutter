import 'package:flutter/material.dart';
import 'package:testing_project/Button.dart';
import 'package:testing_project/InputWidget.dart';
import 'package:testing_project/Screens/AddJob.dart';
import 'RegisterScreen.dart';
import 'EditJob.dart';
import 'package:testing_project/JobListbox.dart';

class JobListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => AddJob())
            );
          },
          child: const Icon(
            Icons.add ,
            size: 50,
            color: Color(0xFF191720),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27, right: 27),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text("Welcome",
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.only(),
                      decoration: const BoxDecoration(
                        color: Color(0xFF191720),
                      ),
                      child: const Icon(Icons.account_circle , size: 25.0, color: Colors.white)
                  ),
                ],
              ),
              const Text("Hur Abbas",
                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border: Border.all(color: const Color(0xFF5D5D67)),
                    borderRadius: BorderRadius.circular(15)),
                child: const TextField(
                  style:
                  TextStyle(color: Colors.white, height: 1.5, fontSize: 15),
                  decoration: InputDecoration(
                      prefixIcon:
                      Icon(Icons.search, color: Color(0xFF5D5D67), size: 23),
                      hintText: "Search keywords..",
                      hintStyle:
                      TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(top: 11),
                      children: <Widget>[
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                        JobListBox(),
                      ]
                  )
              )
            ]
        ),
      ),
    );
  }

  void OnSubmitJobPress() {}
}
