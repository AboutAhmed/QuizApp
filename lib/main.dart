import 'package:flutter/material.dart';

void main(){
  runApp(QuizApp());
}
class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Quizpage(),

      ),
    );
  }
}
class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  int Question=0;
  List<String> Questions=[
    'Capital of pakistan is Islamabad',
    'My name is Ahmed Nawaz',
    'my friend name is Abdullah'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(Questions[Question],
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:EdgeInsets.all(16.0),
            child: Container(
              height: 70,
              width: 250,
              color: Colors.green,
              child: RawMaterialButton(
                onPressed: (){
                  setState((){
                    Question ++;
                  });
                },
                child: Text('TRUE',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 70,
              width: 250,
              color: Colors.red,
              child: RawMaterialButton(
                onPressed: (){
                  setState((){
                    Question ++;
                  });
                },
                child: Text('FALSE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Icon(Icons.check,color: Colors.green,size: 60,),
              Icon(Icons.close,color: Colors.red,size: 60,),
            ],
          ),
        )
      ],
    );
  }
}
