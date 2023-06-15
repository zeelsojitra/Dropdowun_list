import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String select = "Red";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(select);
        },
      ),
      body: SafeArea(
        child: Center(
          child: DropdownButton<String>(
            onChanged: (value) {
              setState(() {
                select = value!;
              });
            },
            value: select,
            items: [
              DropdownMenuItem(
                child: Text("Red"),
                value: "Red",
              ),
              DropdownMenuItem(
                child: Text("Green"),
                value: "Green",
              ),
              DropdownMenuItem(
                child: Text("Yellow"),
                value: "Yellow",
              ),
              DropdownMenuItem(
                child: Text("Blue"),
                value: "Blue",
              ),
              DropdownMenuItem(
                child: Text("Black"),
                value: "Black",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
