import 'package:flutter/material.dart';

class createbill1 extends StatelessWidget {
  const createbill1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.black,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.green,
              )
            ],
          ),
        ));
  }
}
