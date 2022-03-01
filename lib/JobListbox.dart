import 'package:flutter/material.dart';
import 'Screens/EditJob.dart';

class  JobListBox extends StatelessWidget {

  //  final String Status;
  //
  // const JobListBox({ required this.Status});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topCenter,
      child: Container(
        height: 102,
        margin: const EdgeInsets.only(top: 26),
        child: Material(
          //color: const Color(0xFFFFFFFF),
          color: const Color(0xFF201E27),
          elevation: 14.0,
          borderRadius: BorderRadius.circular(10),
          // shadowColor: const Color(0x802196f3),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                child: Text("Flutter Developer Required\nKarachi, Pakistan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),),
              ),
              const SizedBox(width: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditJob()));
                },
                child: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 20,),
              const Icon(
                Icons.delete,
                color: Color(0xFFFF5959),
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}