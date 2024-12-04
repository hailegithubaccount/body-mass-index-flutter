import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const cardscolor=Color(0XFF1D1E33);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

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
                child:ReusableCard(
                  cardchild:Column(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.mars,
                      size: 40.0),
                      SizedBox(
                        height: 20.0,

                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,

                        ),
                      )





                    ],




                  ),
                  
                  
                  
                  colour:cardscolor),



              ),
              Expanded(
                child:ReusableCard(
                  cardchild:Column(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.mars,
                      size: 40.0),
                      SizedBox(
                        height: 20.0,

                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,

                        ),
                      )





                    ],




                  ),
                  
                  
                  
                  
                  colour:cardscolor),
              ),
            ],
          ),
        ),
        Expanded(
       child:ReusableCard(cardchild:Column(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.mars,
                      size: 40.0),
                      SizedBox(
                        height: 20.0,

                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,

                        ),
                      )





                    ],




                  ),
        
        
        
        
        colour:cardscolor),
          
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child:ReusableCard(
                    cardchild:Column(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.mars,
                      size: 40.0),
                      SizedBox(
                        height: 20.0,

                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,

                        ),
                      )





                    ],




                  ),
                    
                    
                    
                    
                    
                    
                    colour:cardscolor),
              ),
              Expanded(
                child:ReusableCard(cardchild:Column(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.mars,
                      size:40.0),
                      SizedBox(
                        height:20.0,

                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,

                        ),
                      )





                    ],




                  ),
                  
                  
                  
                  
                  
                  colour:cardscolor),
                
                ),
              
            ],
          ),
        ),
        Container(
          color: Colors.pink,
          margin:EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 80.0,
        
          ),

        
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour,required this.cardchild});

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, // Use the passed color here
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
