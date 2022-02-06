import 'package:flutter/material.dart';
import 'package:kubgoapp/screens/hompage.dart';
import 'package:kubgoapp/screens/signup.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.orange, Colors.orange, Colors.orange])),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: AssetImage('assets/images/kubgo.png'),
                      fit: BoxFit.fitHeight,
                      height: 150,
                      alignment: FractionalOffset.centerRight),
                  Text(
                    "ເຂົ້າສູ່ລະບົບ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        // bottomLeft: Radius.circular(60),
                        //bottomRight: Radius.circular(60)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          SizedBox(),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    //padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                200,
                                                200,
                                                200,
                                                10,
                                              ),
                                              blurRadius: 10,
                                              offset: Offset(0, 5))
                                        ]),
                                    child: TextFormField(
                                      //style: TextStyle(backgroundColor: Colors.white),
                                      decoration: InputDecoration(
                                        labelText: 'ເບີໂທ 8 ໂຕເລກ',
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    //padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                200,
                                                200,
                                                200,
                                                1,
                                              ),
                                              blurRadius: 5,
                                              offset: Offset(0, 5))
                                        ]),
                                    child: TextFormField(
                                      //style: TextStyle(backgroundColor: Colors.white),
                                      decoration: InputDecoration(
                                        labelText: 'ລະຫັດຜ່ານ',
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        hintStyle:
                                            TextStyle(color: Colors.black),

                                        // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      //child: Button,
                                      )
                                ],
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Container(
                                height: 50,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                            200,
                                            200,
                                            200,
                                            1,
                                          ),
                                          blurRadius: 5,
                                          offset: Offset(0, 5))
                                    ]),
                                child: Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (ctx) => HomePage()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'ເຂົ້າສູ່ລະບົບ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          //////========Forgot Password============
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (ctx) => LogIn()));
                                },
                                child: Text(
                                  "ລືມລະຫັດ",
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          ////================Dont have Account======================
                          SizedBox(
                            height: 10,
                          ),

                          ///===========Line==========
                          Container(
                            height: 4,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          ////================Dont have Account======================
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            child: Container(
                              child: Text(
                                "ຍັງບໍ່ມີບັນຊີ !!",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                          ///=======Link to Regiter==========
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            child: Container(
                                height: 50,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.orange,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                            200,
                                            200,
                                            200,
                                            1,
                                          ),
                                          blurRadius: 5,
                                          offset: Offset(0, 5))
                                    ]),
                                child: Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (ctx) => SignUp()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'ສະໝັກສະມາຊິກ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
