import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';    //Containing Input Field
import './transaction_list.dart';   //Containing Transaction obj and data list

//// THIS dart file is jused to maintain input as well as Obj

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  
    final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle,double txAmount){
 final newTx= Transaction(title: txTitle,amount: txAmount , date:DateTime.now(),id: DateTime.now().toString() );

 setState(() {
   _userTransactions.add(newTx);
 });
  

  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
          //Return Input Field
          NewTransaction(_addNewTransaction),
          TransactionList(_userTransactions)  //Return Data and Obj
    ],);
  }
}