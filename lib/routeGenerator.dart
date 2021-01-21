import 'package:flutter/material.dart';
import 'package:navigation/secondpage.dart';
import 'package:navigation/firstpage.dart';
import 'package:navigation/thirdpage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.push
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => FirstPage());

      case '/third':
        return MaterialPageRoute(builder: (context) => ThirdPage(
          
        ));

      case '/second':
        //validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
              builder: (context) => SecondPage(data: args));
        }

        // If args is not of the correct type,return an error page.
        // you can also throw an exception while in the development
        return _errorRoute();
      default:
        // If there is no such name route in the switch statement. eg.third statement
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
          appBar: AppBar(title: Text('Error')),
          body: Center(
            child: Text('ERROR'),
          ));
    });
  }
}
