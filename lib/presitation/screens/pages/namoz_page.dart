import 'package:flutter/material.dart';
class NamozPage extends StatefulWidget {
  const NamozPage({super.key});

  @override
  State<NamozPage> createState() => _NamozPageState();
}

class _NamozPageState extends State<NamozPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Text("""Rosululloh sollallohu alayhi va sallamning xalqiy sifatlari (tashqi ko’rinishlari):
                Rosululloh sollallohu alayhi va sallam Ibrohim alayhissalomga o’xshardilar. Uzoqdan qaraganda g’oyat kelishgan va ko’rkam, yaqindan qaraganda g’oyat go’zal va yoqimli. U zot sollallohu alayhi va sallam ko’rkam yuzli, oydek, balki oydan ham chiroyli, porlab turgan quyoshdek, go’yo quyosh u kishining yuzlarida yurgandek. Bo’ylari uzun ham, past ham emas, balki o’rtacha bo’ydan biroz balandroq. Jussalari o’rtacha, xushbichim va qaddi-qomatlari kelishgan edi. Rosululloh sollallohu alayhi va sallamning yelkalari keng, ranglari tiniq, oqqa moyil bug’doyrang, yuzlari o’rtacha, yum-yumaloq ham emas, cho’zinchoq ham emas, biroz yumaloqqa moyil, biroq go’shtdor emas edi. Yana u Zot sollallohu alayhi va sallamning chehralari nurli, jiddiy va tabassumli edi. Qovoq soluvchi emas, hursand bo’lsalar, yuzlari yanada yorishib ketar, yuzlaridan nur yog’ar edi. G’azablansalar, yuzlari biroz qizarar edi.
                Rosululloh sollallohu alayhi va sallamning ko’zlari surma tortilgandek chiroyli, ko’z qorachiqlari tim qora, oqi tiniq oq, ba’zan oqida qizillik paydo bo’lar edi. Qoshlari ingichka va yoysimon bo’lib, bir-birlariga tutashmagan edi. Kipriklari uzun, peshonalari kengroq, yonoqlari tekis. Burunlari nozik va o’rtachadan sal uzunroq. Qovoqlarining chetlari egikroq, boshlari o’rtachadan kattaroq, og’izlari o’rtachadan sal kengroq va kattaroq edi (arablarda bunday sifatni maqtashadi, buni fasohatu balog’atga yo’yishadi). Tishlari chiroyli, gapirgan paytlarida tishlari orasidan nur taralayotgandek bo’lardi.
      U zot sollallohu alayhi va sallamning qorinlari ko’kraklari bilan bir tekis edi. Hidlari esa mushku anbardan ham xushbo’yroq, hatto bir yo’ldan yurib o’tgan bo’lsalar, keyin shu yo’ldan yurgan odam xushbo’y hidlaridan u zotning bu yerdan o’tganlarini bilib olardi. Sochlari jingalak ham, silliq ham emas, balki jingalaklik va silliqlik o’rtasida bo’lib, quloqlari o’rtasiga, ba’zan yumshog’iga, ba’zan esa pastiga tushib turgan. Sochlarining rangi qop-qora bo’lgan umrlarining oxirida ikki chakkalaridagi sochlariga biroz oq tushgan.
      Rosululloh sollallohu alayhi va sallamning soqollari bir qabza, ya’ni bir siqimdan uzunroq, qalin va qora. Umrlarining oxirida pastki lablari ostidagi soqollarida ozgina oq tolalar paydo bo’lgan, ammo soch-soqollaridagi oq tolalar soni yigirmataga ham bormagan. Qo’llari muloyim, kaftlari to’la, go’shtdor, ya’ni u zot bilan qo’l berib ko’rishgan odamning kafti to’lar edi. Bilaklari esa kaftga yaqin qismi uzun, baquvvat bo’lgan. Oyoq kaftlari o’rtacha, boldirlari zalvorli, yurishlari salobatli, viqorli, qiyalikdan tushib kelayotgandek tik, zarb bilan, shahdam qadam tashlab, yengil, ildam va hotirjam yurar edilar. Bo’g’in suyaklari yo’g’on, baquvvat edi. Rosululloh sollallohu alayhi va sallamning terlari marjondek edi. U zot sollallohu alayhi va sallam o’zlari uxlasa ham, qalblari uxlamas edi.
              """),
          ),
        ),
      ),
    );
  }
}
