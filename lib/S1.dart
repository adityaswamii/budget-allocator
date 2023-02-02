import 'package:flutter/material.dart';
import 'dart:math';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
          Text(
              userInfo(),
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'JosefinSans',
              color: Color.fromARGB(255, 225, 226, 226),
            ),
          )
        ],
      ),
    );
  }

  int totalExpense = 0;
  var expenseName = ['OVERFLOW'];
  var expenseAmt = [-1.0];

  String userInfo(){
    int P = expenseAmt.length;
    String rv;
    switch(P){
      case 1:{
        rv = "It looks like you haven't told Budgie about your expenses yet. \nGive Budgie your data \n\v\n\t>:(";
        break;
      }
      case 2:{
        rv = " ";
        break;
      }
      case 3:{
        rv = " ";
        break;
      }
      case 4:{
        rv = " ";
        break;
      }
      case 5:{
        rv = " ";
        break;
      }
      default:{
        rv = "Oops, you did something unexpected!"
            "Give Budgie a moment to process this anomaly, or consider restarting :)";
      }
    }
    return rv;
  } // userInfo

  createAlertDialog(BuildContext context) {

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Your name"),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: const Text(
              'Submit',

            ),
            onPressed: (){

            },
          )
        ],
      );
    });
  }

}
