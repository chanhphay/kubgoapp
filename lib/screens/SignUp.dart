import 'package:flutter/material.dart';
import 'package:kubgoapp/screens/Login.dart';
import 'package:group_radio_button/group_radio_button.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

enum SingingCharacter { have, nothave }

class _SignUpState extends State<SignUp> {
  SingingCharacter? _character = SingingCharacter.have;
  bool viewVisible = true;


  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: SingleChildScrollView(
        
        child: Container(
          padding: EdgeInsets.only(top: 50),
          height: 1350,
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
                      height: 100,
                      alignment: FractionalOffset.centerRight),
                  Text(
                    "ຟອມສະໝັກສະມາຊິກ",
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
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://picsum.photos/250?image=9"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (ctx) => SignUp()));
                                },
                                child: Text(
                                  "ເລືອກຮູບ",
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
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
                                labelText: 'ຊື່ແລະນາມສະກູນ',
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            //padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
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
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            //padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
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
                                labelText: 'ລະຫັດຜ່ານ',
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
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
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                hint: Text("ເລືອກແຂວງ"),
                                items: [],
                              ))),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                              //padding: EdgeInsets.only(left: 10),
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
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
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                hint: Text("ເລືອກເມືອງ"),
                                items: [],
                              ))),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            //padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
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
                                labelText: 'ບ້ານ',
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            child: Text("ເລກບັນຊີເພື່ອຮັບເງີນໂອນປາຍທາງ"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  child: ListTile(
                                    title: const Text('ມີບັນຊີ'),
                                    leading: Radio<SingingCharacter>(
                                      value: SingingCharacter.have,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter? value) {
                                        setState(() {
                                          _character = value;
                                          showWidget();
                                        }
                                            // print(),

                                            );
                                      },
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: ListTile(
                                    title: const Text('ບໍ່ມີບັນຊີ'),
                                    leading: Radio<SingingCharacter>(
                                      value: SingingCharacter.nothave,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter? value) {
                                        setState(() {
                                          _character = value;
                                          hideWidget();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: viewVisible,
                              child: Column(
                                children: [
                                  Container(
                                    //padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
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
                                        labelText: 'ເລກບັນຊີເງີນກີບ LAK (BCEL)',
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    //padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
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
                                        labelText: 'ເລກບັນຊີເງີນບາດ THB (BCEL)',
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    //padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
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
                                        labelText: 'ເລກບັນຊີໂດຣາ USD (BCEL)',
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 12,
                          ),
                          //===========Button zone ==============================
                          Container(
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
                              child: Center(
                                child: Text(
                                  'ສົ່ງຟອມສະໝັກ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                              )),
                          //////========Forgot Password============
                          SizedBox(
                            height: 20,
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
                          ////================Already have Account======================
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            child: Container(
                              child: Text(
                                "ມີບັນຊີແລ້ວ !!",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                          ///=======Link to Login==========
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
                                              builder: (contex) => LogIn()));
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
