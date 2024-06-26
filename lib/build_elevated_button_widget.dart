import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildElevatedButtonWidget extends StatefulWidget {
  const BuildElevatedButtonWidget({super.key});

  @override
  State<BuildElevatedButtonWidget> createState() => _BuildElevatedButtonWidgetState();
}

class _BuildElevatedButtonWidgetState extends State<BuildElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 30, bottom: 12, right: 4),
              child: Image.asset('assets/images/flip.jpg'),
            ),
            Text("Grocery",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10.0), // Adjust the radius as needed
          ),
        ),);
  }
}
