import 'package:flutter/material.dart';

import 'ikinci_widget.dart';

main() {
  runApp(Uygulamamiz());
}

class Uygulamamiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Eşleştirme Oyunu"),
        ),
        body: Center(child: IkinciWidget()),
      ),
    );
  }
}
