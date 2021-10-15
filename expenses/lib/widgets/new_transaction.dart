import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {      //will contain input field
  NewTransaction(this.AddtoList);
  final Function AddtoList;
  



  // const NewTransaction({Key? key}) : super(key: key);
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return           Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleInput,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountInput,
                    keyboardType: TextInputType.number,
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.purple,
                    onPressed: () { AddtoList(titleInput.text,double.parse(amountInput.text));}
                    ,
                  ),
                ],
              ),
            ),
          );
  }
}