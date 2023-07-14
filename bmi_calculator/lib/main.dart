import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: resuablebox(
                      cardchild: IconContent(icon: FontAwesomeIcons.mars, label: 'Male')
                    ),
                  ),
                ),
                Expanded(
                  child: resuablebox(
                    cardchild: IconContent(icon: FontAwesomeIcons.venus, label:'Female'),
                  )
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: resuablebox(
                    cardchild: IconContent(icon: FontAwesomeIcons.venus, label:'Female'),

                  )
                )
              ],
            ),
          ),
           Expanded(
            child: Row(
              children: [
                Expanded(
                  child: resuablebox(
                    cardchild: IconContent(icon: FontAwesomeIcons.venus, label:'Female'),

                  )
                ),
                Expanded(
                  child: resuablebox(
                    cardchild: IconContent(icon: FontAwesomeIcons.venus, label:'Female'),

                  ),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({ required this.icon, required this.label});

   final IconData icon;
   final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.0),
        Icon(icon,
        size: 80.0),
        SizedBox(
            height: 15.0
        ),
        Text(label,
          style: TextStyle(
          fontSize: 18.0
        ),)
      ],
    );
  }
}

class resuablebox extends StatelessWidget {
   resuablebox({ required this.cardchild
      });
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      );
  }
}

