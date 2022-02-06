import 'package:flutter/material.dart';

class CODsummarize extends StatelessWidget {
  const CODsummarize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'ກຽມຈັດສົ່ງ', icon: Icon(Icons.preview)),
              Tab(text: 'ກຳລັງຈັດສົ່ງ', icon: Icon(Icons.pending)),
              Tab(text: 'ຈັດສົ່ງສຳເລັດ', icon: Icon(Icons.done))
            ],
          ),
        ),
      ));
}
