import 'package:flutter/material.dart';

class KartElemani extends StatelessWidget {
  final bool gorunurluk;
  final IconData icon;

  const KartElemani({Key key, this.gorunurluk, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Visibility(
          visible: gorunurluk,
          child: Icon(icon),
        ),
      ),
    );
  }
}
