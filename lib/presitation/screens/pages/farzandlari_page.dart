import 'package:flutter/material.dart';

class FarzandlariPage extends StatefulWidget {
  const FarzandlariPage({super.key});

  @override
  State<FarzandlariPage> createState() => _FarzandlariPageState();
}

class _FarzandlariPageState extends State<FarzandlariPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Farzandlari va nabiralari",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
              child: Table(
            border: TableBorder.all(),
            children: [
              buildRow(['№', 'Jinsi', 'Ismi ',  ]),
              buildRow(['1', 'O’g’il', 'Qosim ',  ]),
              buildRow(['2', 'Qiz', 'Zaynab roziyallohu anho',]),
              buildRow(['3', 'Qiz', 'Ruqayya roziyallohu anho', ]),
              buildRow(['4', 'Qiz', 'Ummu Kulsum roziyallohu anho',]),
              buildRow(['5', 'Qiz', 'Fotima roziyallohu anho', ]),
              buildRow(['6', 'O’g’il', 'Abdulloh (Toyyib, Tohir)', ]),
              buildRow(['7', 'O’g’il', 'Ibrohim', ]),

              buildRow(['№', 'Ismi', 'Umri',  ]),
              buildRow(['1', 'Aliy ', 'Balog’at yoshiga yetmagan',]),
              buildRow(['2', 'Umoma roziyallohu anho', 'Tahminan 50 yosh', ]),
              buildRow(['3', 'Abdulloh ', '6 yosh', ]),
              buildRow(['4', 'Hasan roziyallohu anhu', '47 yosh',   ]),
              buildRow(['5', 'Husayn roziyallohu anhu', '56 yosh',  ]),
              buildRow(['6', 'Ummu Kulsum roziyallohu anho ', '36-44 yosh orasi', ]),
              buildRow(['7', 'Muhassin', 'Yoshligida vafot etgan', ]),
              buildRow(['8', 'Zaynab roziyallohu anho', '53-54 yosh', ]),


              buildRow(['Umri', 'Onasi', "Turmush o'rtog'i", ]),
              buildRow(['17 oy', 'Xadija Roziyallohu anho', '--', ]),
              buildRow(['31 yosh', 'Xadija Roziyallohu anho', 'Abul Os ibn Robi’ roziyallohu anhu', ]),
              buildRow(['22 yosh', 'Xadija Roziyallohu anho', 'Usmon ibn Affon roziyallohu anhu', ]),
              buildRow(['28 yosh', 'Xadija Roziyallohu anho', 'Usmon ibn Affon roziyallohu anhu', ]),
              buildRow(['29 yosh', 'Xadija Roziyallohu anho', 'Ali ibn Abu Tolib roziyallohu anhu', ]),
              buildRow(['1 yoshga taqin', 'Xadija Roziyallohu anh', '--', ]),
              buildRow(['18 oy', 'Moriya roziyallohu anho', '--', ]),

              buildRow(['Onasi', 'Otasi', "Turmush o'rtog'i", ]),
              buildRow(['Zaynab roziyallohu anho', 'Abul Os ibn Robi’ roziyallohu anhu', '--', ]),
              buildRow(['Zaynab roziyallohu anho', 'Abul Os ibn Robi’ roziyallohu anho', """
              1)	Ali roziyallohu anho
2)	Mug’iyra ibn Navfal roziyallohu anho

              """, ]),
              buildRow(['Ruqayya roziyallohu anho', 'Usmon roziyallohu anhu', '--', ]),
              buildRow(['Fotima roziyallohu anho', 'Ali roziyallohu anhu', """
              Tahminan o’nta. Shariatga muvofiq bir vatda to’rttadan ortig’ini ushlamagan
              """, ]),
              buildRow(['Fotima roziyallohu anho', 'Ali roziyallohu anhu', 'To’rtta', ]),
              buildRow(['Fotima roziyallohu anho', 'Ali roziyallohu anhu', """
              1.	Umar ibn Xattob
2.	Avn ibn Ja’far
3.	Muhammad ibn Ja’far
4.	Abdulloh ibn Ja’far roziyallohu anhum 

              """, ]),
              buildRow(['Fotima roziyallohu anho', 'Ali roziyallohu anhu', '--' ]),
              buildRow(['Fotima roziyallohu anho', 'Ali roziyallohu anhu', 'Abdulloh ibn Ja’far ibn Abu Tolib roziyallohu anhu' ]),
            ],
          )),
        ),
      ),
    );
  }
}

TableRow buildRow(List<String> cells) => TableRow(
      children: cells
          .map((cell) => Padding(
                padding: const EdgeInsets.all(12),
                child: Text(cell,style: TextStyle(fontSize: 18),),
              ))
          .toList(),
    );
