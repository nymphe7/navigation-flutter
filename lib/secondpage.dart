import 'package:flutter/material.dart';
import 'package:navigation/firstpage.dart';


class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Second page',
            style: TextStyle(color:Colors.purple),),

            Text(data,
            style: TextStyle(color:Colors.purple),),

            SizedBox(height:20.0),
            RaisedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> FirstPage()));
            },
            color:Colors.purple,
            child:Text('Back to login page!'))

          ],),
        
      ),
    );
  }
}