import 'package:flutter/material.dart';
import 'dart:math';

var totalBudget;
var PnameFirst;
var PamtFirst;
var PnameSecond;
var PamtSecond ;
var PnameThird ;
var PamtThird ;
var PnameFourth;
var PamtFourth ;
String rv = "It looks like you haven't told Budgie about your expenses yet. \n\n\nGive Budgie your data ... or else \n\n\n\t                      >:(";

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 96, 95, 95),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 40, 230, 150),
        title: const Text('USER HOMEPAGE', style: TextStyle(
          fontSize: 28,
          fontFamily: 'JosefinSans',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(rv,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 225, 226, 226),
              ),
            ),
          ),
          Center(
            child: OutlinedButton(
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 40, 230, 150)),
              ),
              child: const Text(
                'Edit budget data',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 40, 230, 150),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          )
        ],
      ),

    );
  }




}

class SecondScreen extends StatelessWidget {
  late BuildContext context;

  
  SecondScreen({Key? key}) : super(key: key);

  TextEditingController _totalBudget = TextEditingController();
  TextEditingController _PnameFirst = TextEditingController();
  TextEditingController _PamtFirst = TextEditingController();
  TextEditingController _PnameSecond = TextEditingController();
  TextEditingController _PamtSecond = TextEditingController();
  TextEditingController _PnameThird = TextEditingController();
  TextEditingController _PamtThird = TextEditingController();
  TextEditingController _PnameFourth = TextEditingController();
  TextEditingController _PamtFourth = TextEditingController();

  processUserData(){
    totalBudget = double.parse(_totalBudget.text);
    print(totalBudget);
    PnameFirst= (_PnameFirst.text);
    PnameSecond= (_PnameSecond.text);
    PnameThird= (_PnameThird.text);
    PnameFourth= (_PnameFourth.text);

    double amt1 = 0.30*totalBudget;
    double amt2 = 0.20*totalBudget;
    double amt3 = 0.20*totalBudget;
    double amt4 = 0.15*totalBudget;
    double emergency = 0.15*totalBudget;
    rv="Budgie suggests you to spend\n"
        "$amt1 on $PnameFirst and\n"
        "$amt2 on $PnameSecond and \n"
        "$amt3 on $PnameThird and \n"
        "$amt4 on $PnameFourth and \n"
        "$emergency on misc. expenses or save in an emergency fund";

    PamtFirst= (_PamtFirst.text);
    PamtSecond= (_PamtSecond.text);
    PamtThird= (_PamtThird.text);
    PamtFourth= (_PamtFourth.text);

    print("\n\n$rv\n\nbudgie survey data hehe\n[$PamtFirst,$PamtSecond,$PamtThird,$PamtFourth]");

  }

  userInfo(){
    /*if (PamtSecond == null){
      double amt1 = 0.8*totalBudget;
      double emergency = 0.20*totalBudget;
      rv="Budgie suggests you to spend\n"
          "$amt1 on $PnameFirst and\n"
          "$emergency on misc. expenses or save in an emergency fund";
    }
    else if (PamtThird == null){
      double amt1 = 0.55*totalBudget;
      double amt2 = 0.30*totalBudget;
      double emergency = 0.15*totalBudget;
      rv="Budgie suggests you to spend\n"
          "$amt1 on $PnameFirst and\n"
          "$amt2 on $PnameSecond and \n"
          "$emergency on misc. expenses or save in an emergency fund";
    }
    else if (PamtFourth == null){
      double amt1 = 0.40*totalBudget;
      double amt2 = 0.25*totalBudget;
      double amt3 = 0.20*totalBudget;
      double emergency = 0.15*totalBudget;
      rv="Budgie suggests you to spend\n"
          "$amt1 on $PnameFirst and\n"
          "$amt2 on $PnameSecond and \n"
          "$amt3 on $PnameThird and \n"
          "$emergency on misc. expenses or save in an emergency fund";
    }
    else {}*/
      double amt1 = 0.30*totalBudget;
      double amt2 = 0.20*totalBudget;
      double amt3 = 0.20*totalBudget;
      double amt4 = 0.15*totalBudget;
      double emergency = 0.15*totalBudget;
      rv="Budgie suggests you to spend\n"
          "$amt1 on $PnameFirst and\n"
          "$amt2 on $PnameSecond and \n"
          "$amt3 on $PnameThird and \n"
          "$amt4 on $PnameFourth and \n"
          "$emergency on misc. expenses or save in an emergency fund";

    print(rv);
  } // userInfo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 96, 95, 95),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 230, 150),
        title: const Text("GIVE BUDGIE YOUR DATA MUAHAHA", style: TextStyle(
        fontSize: 28,
        fontFamily: 'JosefinSans',
        fontWeight: FontWeight.bold,
        color: Colors.black,
        )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('MONTHLY BUDGET', style: TextStyle(fontSize: 20),),
            TextField(
              controller: _totalBudget,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Your total monthly budget'),
            ),
            const Text('FIRST PRIORITY', style: TextStyle(fontSize: 20),),
            TextField(
                  controller: _PnameFirst,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Priority Name'),
                ),
            TextField(
                  controller: _PamtFirst,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Money spent (optional, data for survey purposes)'),
                ),
            const Text('SECOND PRIORITY', style: TextStyle(fontSize: 20),),
                TextField(
                  controller: _PnameSecond,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Priority Name'),
                ),
                TextField(
                  controller: _PamtSecond,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Money spent (optional, data for survey purposes)'),
                ),
            const Text('THIRD PRIORITY', style: TextStyle(fontSize: 20),),
                TextField(
                  controller: _PnameThird,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Priority Name'),
                ),
                TextField(
                  controller: _PamtThird,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Money spent (optional, data for survey purposes)'),
                ),
            const Text('FOURTH PRIORITY', style: TextStyle(fontSize: 20),),
                TextField(
                  controller: _PnameFourth,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Priority Name'),
                ),
                TextField(
                  controller: _PamtFourth,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Money spent (optional, data for survey purposes)'),
                ),
            ElevatedButton(
                onPressed: () {
                  processUserData();
                  /*userInfo();
                  Navigator.of(context).pop();
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstScreen()));*/
                },
                child: const Text(
                  'Submit',
              ),
            ),
          ],
        ),
      ),
    );


  }
}
