import 'package:flutter/material.dart';
import 'package:workshop/kart_elemani.dart';

class IkinciWidget extends StatefulWidget {
  @override
  _IkinciWidgetState createState() => _IkinciWidgetState();
}

class _IkinciWidgetState extends State<IkinciWidget> {
  List<IconData> iconlar = [
    Icons.ac_unit,
    Icons.icecream,
    Icons.adb,
    Icons.add_location_alt_outlined,
    Icons.alarm,
    Icons.charging_station_rounded,
    Icons.g_translate_outlined,
    Icons.beach_access,
  ];

  List<int> aciklar = [];
  List<int> cozulenler = [];

  tiklamaFonksiyonu(int i, int j) {
    if (aciklar.length < 2 && !aciklar.contains(4 * i + j)) aciklar.add(4 * i + j);

    setState(() {});

    if (aciklar.length == 2) {
      if (iconlar[aciklar.first] == iconlar[aciklar.last]) {
        cozulenler.add(aciklar.first);
        cozulenler.add(aciklar.last);
      }

      Future.delayed(Duration(milliseconds: 500)).whenComplete(() {
        setState(() => aciklar.clear());
      });
    }
  }

  @override
  void initState() {
    iconlar = [...iconlar, ...iconlar];
    iconlar.shuffle();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 4; i++)
              Expanded(
                child: Row(
                  children: [
                    for (int j = 0; j < 4; j++)
                      Expanded(
                        child: cozulenler.contains(4 * i + j)
                            ? Center()
                            : InkWell(
                                onTap: () {
                                  tiklamaFonksiyonu(i, j);
                                },
                                child: KartElemani(
                                  icon: iconlar[4 * i + j],
                                  gorunurluk: aciklar.contains(4 * i + j),
                                ),
                              ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
