import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:kubgoapp/screens/Follow.dart';
import 'package:kubgoapp/screens/Login.dart';
import 'package:kubgoapp/screens/SignUp.dart';
import 'package:kubgoapp/screens/createbill.dart';
import 'package:kubgoapp/screens/test.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int HW = 30;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Image(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.fitHeight,
              height: 40,
              alignment: FractionalOffset.center),
        ),

        body: SafeArea(
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text("ພືນທີ່ໂຄສະນາ")],
                  ),
                ),
                height: 180,
                width: double.infinity,
              ),
              Container(
                height: 3,
                color: Colors.orange,
              ),
              /*  Container(
                  //padding: EdgeInsets.only(top: 50),
                  //height: 1350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          colors: [Colors.white, Colors.white, Colors.orange])),*/

              ///========work state
              Container(
                padding: EdgeInsets.only(top: 1),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      width: double.infinity,
                      height: 400,
                      color: Colors.white,
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: [
                          CustomCard(
                            height: 40,
                            width: 40,
                            elevation: 5,
                            borderRadius: 5,
                            color: Colors.orange.shade400,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Listbill()),
                              );
                            },
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.create_new_folder,
                                    size: 70,
                                    // color: warna,
                                  ),
                                  Text(
                                    'ສ້າງບີນຝາກເຄື່ອງ',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          CustomCard(
                            height: 40,
                            width: 40,
                            elevation: 5,
                            borderRadius: 5,
                            color: Colors.orange.shade400,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Follow()),
                              );
                            },
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.follow_the_signs_outlined,
                                    size: 70,
                                    // color: warna,
                                  ),
                                  Text(
                                    'ຕິດຕາມຂົນສົ່ງ',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          CustomCard(
                            height: 40,
                            width: 40,
                            elevation: 5,
                            borderRadius: 5,
                            color: Colors.orange.shade400,
                            onTap: () {},
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.follow_the_signs_outlined,
                                    size: 70,
                                    // color: warna,
                                  ),
                                  Text(
                                    'ປະຫວັດຝາກເຄື່ອງ',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          CustomCard(
                            height: 40,
                            width: 40,
                            elevation: 5,
                            borderRadius: 5,
                            color: Colors.orange.shade400,
                            onTap: () {},
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.money,
                                    size: 70,
                                    // color: warna,
                                  ),
                                  Text(
                                    'ສະຫຼຸບ COD',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          CustomCard(
                            height: 40,
                            width: 40,
                            elevation: 5,
                            borderRadius: 5,
                            color: Colors.orange.shade400,
                            onTap: () {},
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    size: 70,
                                    // color: warna,
                                  ),
                                  Text(
                                    'ກວດສອບຄ່າສົ່ງ',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // ),
            ],
          ),
        ),
        // ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 50,
          color: Colors.orange,
          child: Row(
            children: [
              // BottomNavItem(),
              // BottomNavItem(),
            ],
          ),
        )
        //  BottomAppBar(
        //   color: Colors.orange,
        //   shape: const CircularNotchedRectangle(),
        //   child: Container(
        //     height: 50.0,
        //     child: IconButton(
        //       alignment: FractionalOffset.bottomLeft,
        //       icon: const Icon(Icons.navigate_before),
        //       tooltip: 'Go to the next page',
        //       onPressed: () {
        //         Navigator.push(context, MaterialPageRoute<void>(
        //           builder: (BuildContext context) {
        //             return Scaffold(
        //               appBar: AppBar(
        //                 title: const Text('Next page'),
        //               ),
        //               body: const Center(
        //                 child: Text(
        //                   'This is the next page',
        //                   style: TextStyle(fontSize: 24),
        //                 ),
        //               ),
        //             );
        //           },
        //         ));
        //       },
        //     ),
        //   ),
        // ),
        //==============
        ,
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

        endDrawer: Drawer(
          elevation: 20.0,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("javatpoint"),
                accountEmail: Text("javatpoint@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("abc"),
                ),
              ),
              ListTile(
                title: new Text("Inbox"),
                leading: new Icon(Icons.mail),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: new Text("Primary"),
                leading: new Icon(Icons.inbox),
              ),
              ListTile(
                title: new Text("Social"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                title: new Text("Promotions"),
                leading: new Icon(Icons.local_offer),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_circle_up_outlined,
            size: 30,
            // color: warna,
          ),
          Text('ພັດສະດູສົ່ງອອກ'),
        ],
      ),
    );
  }
}
