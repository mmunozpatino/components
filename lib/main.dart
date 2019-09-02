import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
 

import 'package:components/src/pages/alert_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      //se ejecuta cuando no entra a una ruta estatica
      onGenerateRoute: (settings){

        print('ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context ) => AlertPage()
        );
      },
      theme: ThemeData(primaryColor: Colors.deepPurple),
      
    );
  }
}