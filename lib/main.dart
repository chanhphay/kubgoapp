import 'package:flutter/material.dart';
import 'package:kubgoapp/screens/Hompage.dart';
import 'package:kubgoapp/screens/Login.dart';
import 'package:kubgoapp/screens/SignUp.dart';
import 'package:kubgoapp/screens/test.dart';
import 'package:kubgoapp/screens/testappbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KubGO Express',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'KubGO Express'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
        child: Scaffold(
            // appBar: AppBar(
            //   title: Image(
            //       image: AssetImage('assets/images/logo.png'),
            //       fit: BoxFit.fitHeight,
            //       height: 40,
            //       alignment: FractionalOffset.topCenter),
            // ),
            body: SignUp()
            /*Center(
        child: Column(
          children: [
            Container(
              height: size.height * 0.2 - 10,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(36),
                      bottomLeft: Radius.circular(36))),
            )
          ],
        ),
      ),*/
            ));
  }
}
