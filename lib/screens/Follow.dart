import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class Follow extends StatelessWidget {
  const Follow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຕິດຕາມພັດສະດຸ'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              width: double.infinity,
              height: 500,
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  CustomCard(
                    height: 50,
                    width: 40,
                    elevation: 5,
                    borderRadius: 5,
                    color: Colors.orange.shade400,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExPortFollow()),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          size: 90,
                          // color: warna,
                        ),
                        Text(
                          'ສົ່ງອອກ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  CustomCard(
                    height: 50,
                    width: 40,
                    elevation: 5,
                    borderRadius: 5,
                    color: Colors.orange.shade400,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImportFollow()),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.black,
                          size: 90,
                        ),
                        Center(
                          child: Text(
                            'ສົ່ງເຖີງຂ້ອຍ',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

///  Export=============

class ExPortFollow extends StatelessWidget {
  const ExPortFollow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('ຕິດຕາມພັດສະດຸທີ່ສົ່ງອອກ'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text: 'ກຽມຈັດສົ່ງ', icon: Icon(Icons.preview)),
                Tab(text: 'ກຳລັງຈັດສົ່ງ', icon: Icon(Icons.pending)),
                Tab(
                  text: 'ສົ່ງສຳເລັດແລ້ວ',
                  icon: Icon(Icons.done),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: Container(
                      alignment: Alignment.center, child: Text("ກຽມຈັດສົ່ງ"))),
              Center(
                  child: Container(
                      alignment: Alignment.center,
                      child: Text("ກຳລັງຈັດສົ່ງ"))),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'ຄົ້ນຫາພັດສະດຸ',
                          icon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                  Center(
                      child: Container(
                          padding: EdgeInsets.all(50),
                          alignment: Alignment.center,
                          child: Text("ສົ່ງສຳເລັດແລ້ວ"))),
                ],
              )),
            ],
          ),
        ),
      );
}
//==  Import

class ImportFollow extends StatelessWidget {
  const ImportFollow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('ພັດສະດຸທີ່ສົ່ງເຖີງຂ້ອຍ'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text: 'ກຳລັງຈັດສົ່ງ', icon: Icon(Icons.pending)),
                Tab(text: 'ສົ່ງສຳເລັດ', icon: Icon(Icons.done))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ImportPending(),
              ImportCompleted(),
            ],
          ),
        ),
      );
}

class ImportCompleted extends StatelessWidget {
  const ImportCompleted({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center, child: Text("Tab2")));
  }
}

class ImportPending extends StatelessWidget {
  const ImportPending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center, child: Text("Tab1")));
  }
}
