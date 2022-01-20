import 'package:app/widgets/transaction_list.dart';
import './widgets/new_transaction.dart';
import './models/transaction.dart';
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

  final List <Transaction> _userTransactions=[
     Transaction(
    id:"t1",
    title:"New Shoes", 
    amount:69.99,
    date:DateTime.now(),
    ),
    Transaction(
    id:"t2",
    title:"Weekly Groceries", 
    amount:16.59,
    date:DateTime.now(),
    ),
  ];
 
 void _addNewTransaction(String txTitle,double txAmount){
   final newTx=Transaction(title: txTitle, amount: txAmount, date: DateTime.now(),id:DateTime.now().toString());
    setState((){
    _userTransactions.add(newTx);
  });
 }

//late String titleInput;
//late String amountInput;
//open modal function
void _startAddNewTransaction(BuildContext ctx){
  showModalBottomSheet(
    context:ctx,
    builder: (_){
      return GestureDetector(
        onTap: (){},
        child:NewTransaction(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
        ) ;
    }
    );
}
  @override
  Widget build(BuildContext context) {
    
  
   return MaterialApp(
     home:Scaffold(
       appBar: AppBar(
         title: Text("Flutter App"),
         actions:<Widget>[
          IconButton(onPressed:()=>_startAddNewTransaction(context),
           icon: Icon(Icons.add),)
         ],
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
         TransactionList(_userTransactions),
         ],
       ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:()=>_startAddNewTransaction(context)),

     ),
     );
  }
}