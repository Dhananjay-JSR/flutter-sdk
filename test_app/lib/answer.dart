import 'package:flutter/material.dart';

class button_p extends StatelessWidget {
  //final Function selectHandler;
  final String answerText;
  // const answer({ Key? key }) : super(key: key);
button_p(this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.blue.shade900,
        onPressed: ()=>print("This was Pressed"),
        color: Colors.redAccent,
      ),
    );
  }
}
