import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final String arguments;

  const FirstPage({Key key, this.arguments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Hello \n World',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0,
                ),
              ),
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    // border: InputBorder.none
                    border: OutlineInputBorder())),
            SizedBox(height: 30.0),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    // border: InputBorder.none
                    border: OutlineInputBorder())),
            SizedBox(height: 40.0),
            RaisedButton.icon(
                onPressed: () {},
                color: Colors.red,
                icon: Icon(Icons.local_gas_station),
                label: Padding(
                    padding: EdgeInsets.all(10.0), child: Text('Login'))),
            SizedBox(height: 30.0),
            GestureDetector(
                onTap: () {
                  // Navigator.of(context).push( MaterialPageRoute(
                  //   builder: (context){
                  //     return SecondPage(data:'Hello how are you?');
                  //   }));

                  Navigator.of(context)
                      .pushNamed('/second', arguments: 'Hello from first page');
                },
                child: Text(
                  'New here !',
                  style: TextStyle(color: Colors.blueAccent),
                )),
            SizedBox(height: 30.0),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/third',
                  );
                },
                child: Text(
                  'Forgot Password ??',
                  style: TextStyle(color: Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
