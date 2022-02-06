import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kubgoapp/screens/SignUp.dart';
import 'package:kubgoapp/screens/login.dart';
import 'package:kubgoapp/screens/signup.dart';

/*
class HomePage1 extends StatefulWidget {
  HomePage1({Key? key}) : super(key: key);

  @override
  _HomePageState1 createState() => _HomePageState1();
}

enum SingingCharacter { take, nottake }

class _HomePageState1 extends State<HomePage1> {
  SingingCharacter? _character = SingingCharacter.take;
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
          height: 900,
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
                  // Image(
                  //     image: AssetImage('assets/images/kubgo.png'),
                  //     fit: BoxFit.fitHeight,
                  //     height: 150,
                  //     alignment: FractionalOffset.centerRight),
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
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(12.0),
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.orange[900]),
                                    child: Text(
                                      "ສ້າງບີນຝາກເຄື່ອງ",
                                      style: TextStyle(
                                          color: Colors.yellowAccent,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(15.0),
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.green),
                                    child: Text(
                                      "ຢືນຢັນບີນຝາກ",
                                      style: TextStyle(
                                          color: Colors.yellowAccent,
                                          fontSize: 15),
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(children: [
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
                                      labelText: 'ປະເພດເຄື່ອງ',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      hintStyle: TextStyle(color: Colors.black),
                                      // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
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
                                      borderRadius: BorderRadius.circular(20),
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
                                      labelText: 'ເບີໂທ',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      hintStyle: TextStyle(color: Colors.black),

                                      // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
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
                                      labelText: 'ຊື່ຜູ້ຮັບ',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      hintStyle: TextStyle(color: Colors.black),
                                      // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
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
                                      labelText: 'ສະຖານທີ່ສົ່ງ',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      hintStyle: TextStyle(color: Colors.black),
                                      // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: ListTile(
                                          title: const Text('ເກັບເງີນປາຍທາງ'),
                                          leading: Radio<SingingCharacter>(
                                            value: SingingCharacter.take,
                                            groupValue: _character,
                                            onChanged:
                                                (SingingCharacter? value) {
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
                                          title: const Text('ບໍ່ເກັບ'),
                                          leading: Radio<SingingCharacter>(
                                            value: SingingCharacter.nottake,
                                            groupValue: _character,
                                            onChanged:
                                                (SingingCharacter? value) {
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
                                              borderRadius:
                                                  BorderRadius.circular(20),
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
                                              labelText: 'ເງີນກີບ',
                                              labelStyle: TextStyle(
                                                  color: Colors.black),
                                              hintStyle: TextStyle(
                                                  color: Colors.black),
                                              // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          //padding: EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
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
                                              labelText: 'ເງີນບາດ',
                                              labelStyle: TextStyle(
                                                  color: Colors.black),
                                              hintStyle: TextStyle(
                                                  color: Colors.black),
                                              // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          //padding: EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
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
                                              labelText: 'ເງີນໂດລາ',
                                              labelStyle: TextStyle(
                                                  color: Colors.black),
                                              hintStyle: TextStyle(
                                                  color: Colors.black),
                                              // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            //child: Button,
                                            )
                                      ],
                                    )),
                              ])),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(12.0),
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.orange[900]),
                                    child: Text(
                                      "ບັນທຶກ",
                                      style: TextStyle(
                                          color: Colors.yellowAccent,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(15.0),
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.green),
                                    child: Text(
                                      "ຍົກເລີກ",
                                      style: TextStyle(
                                          color: Colors.yellowAccent,
                                          fontSize: 15),
                                    ),
                                  ),
                                ]),
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
*/
class Listbill extends StatefulWidget {
  @override
  _ListbillState createState() => _ListbillState();
}

enum SingingCharacter { take, nottake }

class _ListbillState extends State<Listbill> {
  //var lists = List<String>.generate(11, (index) => "List : $index");
  bool _isShow = false;
  SingingCharacter? _character = SingingCharacter.take;
  bool viewVisible = true;
  bool viewVisible1 = true;

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

  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            _isShow = true;
                          },
                        );
                      },
                      child: Text(
                        'ສ້າງບີນຝາກເຄື່ອງ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            _isShow = false;
                          },
                        );
                      },
                      child: Text(
                        'ສ້າງບີນຝາກເຄື່ອງ',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),

            ///
            ///===================Listview show when creat bill

            ///
            Visibility(
              visible: _isShow,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Container(
                    //height: ,
                    child: Column(
                      children: [
                        /////======children
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(children: [
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
                                    labelText: 'ປະເພດເຄື່ອງ',
                                    labelStyle: TextStyle(color: Colors.black),
                                    hintStyle: TextStyle(color: Colors.black),
                                    // hintText: 'ເບີໂທ 8 ໂຕເລກ'
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
                                            1,
                                          ),
                                          blurRadius: 5,
                                          offset: Offset(0, 5))
                                    ]),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],

                                  //style: TextStyle(backgroundColor: Colors.white),
                                  decoration: InputDecoration(
                                    labelText: 'ເບີໂທ',
                                    labelStyle: TextStyle(color: Colors.black),
                                    hintStyle: TextStyle(color: Colors.black),

                                    // hintText: 'ເບີໂທ 8 ໂຕເລກ'
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
                                    labelText: 'ຊື່ຜູ້ຮັບ',
                                    labelStyle: TextStyle(color: Colors.black),
                                    hintStyle: TextStyle(color: Colors.black),
                                    // hintText: 'ເບີໂທ 8 ໂຕເລກ'
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
                                    labelText: 'ສະຖານທີ່ສົ່ງ',
                                    labelStyle: TextStyle(color: Colors.black),
                                    hintStyle: TextStyle(color: Colors.black),
                                    // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                      child: ListTile(
                                        title: const Text('ເກັບເງີນປາຍທາງ'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.take,
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
                                        title: const Text('ບໍ່ເກັບ'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.nottake,
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
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                            labelText: 'ເງີນກີບ',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            hintStyle:
                                                TextStyle(color: Colors.black),
                                            // hintText: 'ເບີໂທ 8 ໂຕເລກ'
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
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                            labelText: 'ເງີນບາດ',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            hintStyle:
                                                TextStyle(color: Colors.black),
                                            // hintText: 'ເບີໂທ 8 ໂຕເລກ'
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
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                            labelText: 'ເງີນໂດລາ',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            hintStyle:
                                                TextStyle(color: Colors.black),
                                            // hintText: 'ເບີໂທ 8 ໂຕເລກ'
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ])),
                        SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        _isShow = false;
                                      },
                                    );
                                  },
                                  child: Text(
                                    'ບັນທຶກ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        _isShow = true;
                                      },
                                    );
                                  },
                                  child: Text(
                                    'ຍົກເລີກ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ]),
                        ),

                        //// children
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              color: Colors.orange,
              child: Column(
                children: [
                  Text('ລາຍການຝາກເຄື່ອງມື້ນີ້'),
                  Container(
                    height: 180,
                    color: Colors.white,
                    child: ListView(
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              height: 200,
                              width: 120,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(children: [
                                        TextSpan(
                                            text: 'ຂໍ້ຜູ້ຝາກ : ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold)),
                                      ])
                                    ])),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(children: [
                                        TextSpan(
                                            text: 'Kubgo shope',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15))
                                      ])
                                    ])),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(children: [
                                        TextSpan(
                                            text: 'ໂທ : ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15)),
                                        TextSpan(
                                            text: '77778888',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15)),
                                      ])
                                    ])),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(children: [
                                        TextSpan(
                                            text: 'ID : ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15)),
                                        TextSpan(
                                            text: '12345678',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15)),
                                      ])
                                    ])),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                //color: Colors.grey,
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Column(
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(children: [
                                          TextSpan(
                                              text: 'ຂໍ້ຜູ້ຮັບ : ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: 'Loukha',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                        ])
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(children: [
                                          TextSpan(
                                              text: 'ເບີໂທ : ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                          TextSpan(
                                              text: '55554444',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                        ])
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(children: [
                                          TextSpan(
                                              text: 'ທີ່ຢູ່ : ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                          TextSpan(
                                              text: 'ດົົງໂດກ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                        ])
                                      ])),
                                      Container(
                                        height: 2,
                                        color: Colors.black,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(children: [
                                          TextSpan(
                                              text: 'ເກັບເງີນປາຍທາງ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                        ])
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(children: [
                                          TextSpan(
                                              text: 'ເງີນກີບ : ' +
                                                  '110,000' +
                                                  'ກີບ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                        ])
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(children: [
                                          TextSpan(
                                              text: 'ເງີນບາດ : ' + '00' + 'ບາດ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                        ])
                                      ])),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  'ເງີນໂດລາ : ' + '00' + 'ໂດລາ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15)),
                                        ])
                                      ])),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
////===============
