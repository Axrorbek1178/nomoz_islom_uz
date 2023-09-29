import 'package:flutter/material.dart';

class DasturPage extends StatefulWidget {
  const DasturPage({super.key});

  @override
  State<DasturPage> createState() => _DasturPageState();
}

class _DasturPageState extends State<DasturPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Text("""
          1.	Shayx Muhammad Sodiq Muhammad Yusuf. “Islom tarixi” Hilol nashr 2017.
2.	Shayx Muhammad Sodiq Muhammad Yusuf. “Hadis va hayot” 19-juz “Olamlarga rahmat payg’ambar” “Hilol nashr” 2021-yil.
3.	Nuriddin domla Xoliqnazarov “Tasadduq, yo Rosululloh”. 
4.	Abdul Azim Ziyovuddin “Rosululloh sollallohu alayhi va sallam va ahli bayt” “Hilol nashr” 2020-yil.
5.	Abdul Azim Ziyovuddin “Siz payg’ambarni ko’rganmisiz 1-kitob” “G’afur G’ulom nomidagi nashriyot uyi” 2018-yil.
6.	Abdul Azim Ziyovuddin “Siz payg’ambarni ko’rganmisiz 2-kitob” “Hilol nashr” 2020-yil
7.	Shayx Muhammad Huzariy “Nurul yaqiyn” Abdul Azim Ziyovuddin Akademik tarjima “Matbaachi” 2022-yil.
          """,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ),
      ),
    );
  }
}
