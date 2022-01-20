import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() =>runApp(Home());
class Home extends StatefulWidget{ 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePage();
  } 
  
}

class HomePage extends State<Home>{

//late String titleInput;
//late String amountInput;

  @override
  Widget build(BuildContext context) {
    
  
   return MaterialApp(
     home:Scaffold(
       appBar: AppBar(title: Text("Flutter App"),
       ),

       body:SingleChildScrollView(
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
         
          Container(width:double.infinity,
           child:Card(
             color: Colors.blue,
             child:Text('CHART!'),
             elevation: 5,
            ),
         
           ),
         UserTransactions(),
         ],
       ),
      ),

     ),
     );
  }
}