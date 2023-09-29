import 'package:flutter/material.dart';
class AyollariApge extends StatefulWidget {
  const AyollariApge({super.key});

  @override
  State<AyollariApge> createState() => _AyollariApgeState();
}

class _AyollariApgeState extends State<AyollariApge> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Ayollari",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body:  Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
          child: Column(
            children: [
              Table(
                border: TableBorder.all(),
                children: [
                  buildRow(['№', 'Ismi-sharifi', 'Tug’ilgan yili', 'Vafot etgan yili',]),
                  buildRow(['1', 'Xadija binti Xuvaylid', 'Hijratdan avvlgi 68-yil', 'Hijratdan avvalgi 3-yil',]),
                  buildRow(['2', 'Savda binti Zam’a ', '?', 'Hijriy 23-yoki 54-yil',]),
                  buildRow(['3', 'Oisha binti Abu Bakr', 'Hijratdan avvalgi 9-8 yil', 'Hijriy 57-58 yil',]),
                  buildRow(['4', 'Hafsa binti Umar ', 'Hijratdan avvalgi 18-yil', 'Hijriy 45-yil',]),
                  buildRow(['5', 'Zaynab binti Huzayma', 'Hijratdan avvalgi 26-yil', 'Hijriy 4-yil',]),
                  buildRow(['6', 'Ummu Salama binti Abu Umayya ', 'Hijratdan avvalgi 22-yil', 'Hijriy 62-yil ',]),
                  buildRow(['7', 'Zaynab binti Jahsh', 'Hijratdan avvalgi 33-yil', 'Hijriy 20-yil',]),
                  buildRow(['8', 'Juvayriya binti Horis ', 'Juvayriya binti Horis', 'Hijriy 56-yil',]),
                  buildRow(['9', 'Safiya binti Huyay ', 'Hijratdan avvalgi 10-yil', 'Hijriy 50-yil',]),
                  buildRow(['10', 'Ummu Habiba binti Sufyon', 'Hijratdan avvalgi 25-yil', 'Hijriy 44-yil',]),
                ],
              ),
              SizedBox(height: 15,),
              Text("""
              1.	Xadija binti Xuvaylid roziyallohu anho. Rosululloh sollallohu alayhi va sallamga 40 yoshlarida (ba’zi rivoyatlarga ko’ra 25, 28 yoki 35 yosh deyilgan) Makka shahrida turmushga chiqqan. U vaqtda Rosululloh sollallohu alayhi va sallam 25 yosh bo’lganlar. Xadija roziyallohu anhoning mahrlari 20ta urg’ochi bo’taloq bo’lgan.
2.	Savda binti Zam’a roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijratdan avvalgi 4-yil, nubuvvatning 10-yili shavvol oyida Makka mukarramada turmushga chiqqan. Rosululloh sollallohu alayhi va sallam u zotga uylanganlarida 50 yosh bo’lganlar. Savda binti Zam’a roziyallohu anhoning mahrlari 400 yoki 500 dirham bo’lgan.
3.	Oisha binti Abu Bakr roziyallohu anhu. Rosululloh sollallohu alayhi va sallamga hijriy 1-yoki 2-yili shavvol oyida 9 yoshida (bundan katta bo’lgan degan rivoyatlar ham bor) turmushga chiqqan. Turmush qurgan joyari Madina. Rosululloh sollallohu alayhi va sallam u zotga uylanganlarida 53 yosh bo’lgan. Mahrlari 400 yoki 500 dirham bo’lgan. 
4.	Hafsa binti Umar roziyallohu anhu. Rosululloh sollallohu alayhi va sallamga hijriy 3-yili sha’bon oyida 21 yoshlarida Madina shahrida turmushga chiqqan. U payt Rosululloh sollallohu alayhi va sallam 55 yosh bo’lgan. Mahrlari 400 yoki 500 dirham bo’lgan.
5.	 Zaynab binti Huzayma roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 4-yili robi’ul avval oyida qariyb 30 yoshlarida turmushga chiqadi. Turmushga chiqqan joylari Madina shahri. Rosululloh sollallohu alayhi va sallam u zotga uylanganlarida 56 yosh bo’lgan. Mahrlari 400 yoki 500 dirham bo’lgan.
6.	Ummu Salama bintu Abu Umayya roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 4-yili 25 shavvol oyida 26 yoshida turmushga chiqqanlar. U vaqtda Rosululloh sollallohu alayhi va sallam 56 yosh bo’lganlar. Ummu Salama roziyallohu anho Rosululloh sollallohu alayhi va sallamga Madina shahrida turmushga chiqqan, mahrlari bir necha uy anjomlari bo’lgan.
7.	Zaynab binti Jahsh roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 5-yili Zulqa’da oyida, 38 yoshlarida turmushga chiqqan. Rosululloh sollallohu alayhi va sallam u zotga uylanganlarida 57 yosh edilar. Madina shahrida turmushga chiqqanlar, mahrlari 400 yoki 500 dirham bo’lgan. 
8.	Juvayriya (Juvayriya ismi joriya so’zining kichraytirilgan shakli, unga ko’ra Juvayriya joriyacha, qizcha, qizaloq degan ma’noni anglatadi) binti Horis roziyalohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 6-yili sha’bon oyida, 20 yoshlarida turmushga chiqqan. Rosululloh sollallohu alayhi va sallam u zotga uylanganlarida 58 yosh bo’lganlar. Banu Mustaliq g’azotida Sobit ibn Qays roziyallohu anhuning ulushiga tushgan Juvayriya roziyallohu anhoni Rosululloh sollallohu alayhi va sallam 9 uqiya=360 dirham to’lab, hayzdan pok bo’lgach uylanganlar. Mahrlari 360 dirham bilan ozod qilinish bo’lgan. 
9.	Sofiya binti Huyay roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 7-yili safar oyining oxiri yoki robi’ul avval oyining boshida, 17 yoshlarida turmushga chiqadi.  Turmush qurgan joylari Sahbo tog’i joylashgan yer (Haybardan Madinagacha bo’lgan yerda joylashgan, hozir Atva tog’i deb ataladi). Mahrlari asirlikdan ozod qilinishi bo’lgan. Rosululloh sollallohu alayhi va sallam u zotga 59 yoshda uylanganlar. 
10.	Ummu Habiba (ismlari Ramla) binti Abu Sufyon roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 7-yili 32 yoshda turmushga chiqqanlar. Rosululloh sollallohu alayhi va sallam u zotga uylanganlarida 59 yosh bo’ladilar. Turmush qurgan joylari Madinai Munavvara.
11.	Maymuna (asl ismlari Barra bo’lgan, keyin Rosululloh sollallohu alayhi va sallam Maymuna – baxtli ayol deb o’zgartirganlar) binti Horis roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 7-yili, zulqa’da oyida, Rosululloh sollallohu alayhi va sallam 59 yoshliklarida turmushga chiqadi. Turmushga chiqqan joylari Sarif vodiysi (Makkadan Madina tarafga chiqishda, tan’imdan keyin). Mahrlari 400 yoki 500 dirham (Maymuna onamizga mahrni Rosululloh sollallohu alayhi va sallam o’rniga amakisi Abbos roziyallohu anhu beradi). Maymuna roziyallohu anho hijriy 51-yili vafot etadilar.

Rosululloh sollallohu alayhi va sallamning joriyalari:
1.	Rayhona roziyallohu anho. Otasining ismi Amr yoki Zayd yoki Sham’un. Rosululloh sollallohu alayhi va sallamga hijriy 6-yili Muharram oyida iymon keltiradi va joriya bo’ladi. Hijriy 10-yili zulhijja oyi oxirida vafot etadi.
2.	Moriya binti Sham’un roziyallohu anho. Rosululloh sollallohu alayhi va sallamga hijriy 7-yili joriya bo’lgan.


              """,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
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


