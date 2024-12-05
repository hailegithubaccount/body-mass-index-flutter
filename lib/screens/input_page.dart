import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';  
import '../components/icon_content.dart';
import '../components/reusable_card.dart';

// Make sure to import this

const activeColor =Color(0XFF1D1E33);
const inactiveColor=Color(0XFF111328);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('The male button is tapped');
                  },
                  child: ReusableCard(
                    cardChild: IconCard(label: 'MALE', icon: FontAwesomeIcons.mars),
                    color: inactiveColor,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: IconCard(label: 'FEMALE', icon: FontAwesomeIcons.venus),
                  color: activeColor,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            cardChild: IconCard(label: 'FEMALE', icon: FontAwesomeIcons.venus),
            color:activeColor,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardChild: IconCard(label: 'MALE', icon: FontAwesomeIcons.mars),
                  color: activeColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: IconCard(label: 'MALE', icon: FontAwesomeIcons.mars),
                  color:activeColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.pink,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 80.0,
        ),
      ],
    );
  }
}
