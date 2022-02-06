import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  HomePage2({Key? key}) : super(key: key);

  @override
  _HomePageState2 createState() => _HomePageState2();
}

class _HomePageState2 extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Container(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 100,
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
                                      color: Colors.black, fontSize: 15))
                            ])
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(children: [
                              TextSpan(
                                  text: 'ໂທ : ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                              TextSpan(
                                  text: '77778888',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                            ])
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(children: [
                              TextSpan(
                                  text: 'ID : ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                              TextSpan(
                                  text: '12345678',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                            ])
                          ])),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.grey,
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
                                        color: Colors.black, fontSize: 15)),
                              ])
                            ])),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(children: [
                                TextSpan(
                                    text: 'ເບີໂທ : ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                TextSpan(
                                    text: '55554444',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ])
                            ])),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(children: [
                                TextSpan(
                                    text: 'ທີ່ຢູ່ : ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                TextSpan(
                                    text: 'ດົົງໂດກ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
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
                                    text: 'ເງີນກີບ : ' + '110,000' + 'ກີບ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ])
                            ])),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(children: [
                                TextSpan(
                                    text: 'ເງີນບາດ : ' + '00' + 'ບາດ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ])
                            ])),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(children: [
                                TextSpan(
                                    text: 'ເງີນໂດລາ : ' + '00' + 'ໂດລາ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
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
        ),
      ),
    );
  }
}
