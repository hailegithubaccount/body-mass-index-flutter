import 'package:flutter/material.dart';
//import 'package:bmi_calculator/constants.dart';


const labelStyel=TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          );


class IconCard extends StatelessWidget {
  final String label;
  final IconData icon;

  IconCard({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch, // Ensures the column stretches to fill space
      children: <Widget>[
        Icon(icon, size: 80.0), // Adjust the icon size as necessary
        SizedBox(height: 20.0),
        Text(
          label,
          style: labelStyel,
          textAlign: TextAlign.center, // Centers the text
        ),
      ],
    );
  }
}
