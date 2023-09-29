import 'package:flutter/material.dart';

class TahoratPage extends StatefulWidget {
  const TahoratPage({super.key});

  @override
  State<TahoratPage> createState() => _TahoratPageState();
}

class _TahoratPageState extends State<TahoratPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Text("""Rosululloh sollallohu alayhi va sallamning nasablari:
                Muhammad Ibn Abdulloh ibn Abdulmuttolib ibn Hoshim ibn Abdumanof ibn Qusay ibn Kilob ibn Murra ibn Ka'b ibn Luay ibn G'olib ibn Fihr (laqabi Quraysh) ibn Molik ibn Nazr ibn Kinona ibn Huzayma ibn Mudrika ibn Ilyos ibn Muzar ibn Nizor ibn Ma'ad ibn Adnon.
      """,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          ),
        ),
      ),
    );
  }
}
