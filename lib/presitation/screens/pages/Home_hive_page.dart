import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // HiveService service = HiveService();
  // List<WordModel> words = [];

  // @override
  // void initState() {
  //   super.initState();
  //   words.addAll(service.read().toList());
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Siyrat ensiklopediyasi",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.star_border),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Saralanganlar",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )),
                const PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.file_open_outlined),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Pdf qilish",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )),
                const PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.import_export),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Exceldan Olish",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )),
                PopupMenuItem(
                  child: const Row(
                    children: [
                      Icon(Icons.file_open_outlined),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Excelga ko'chirish",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  // onTap: () async {
                  //   await service.writeToExcel().then((value) {
                  //     AnimatedSnackBar.rectangle(
                  //         'Muvaffaqiyatli', (value as File).path,
                  //         type: AnimatedSnackBarType.success,
                  //         duration: const Duration(milliseconds: 10000),
                  //         brightness: Brightness.dark,
                  //         mobileSnackBarPosition:
                  //         MobileSnackBarPosition.top)
                  //         .show(context);
                  //   });
                  //},
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 1)),
              child: Row(
                children: [
                  const SizedBox(width: 6),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        //words = service.search(value).toList();
                        setState(() {});
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Izlash',
                        hintStyle:
                        TextStyle(color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                  const Icon(CupertinoIcons.search, color: Colors.white),
                ],
              ),
            ),
          ),
          Expanded(
            child:
                const Center(
                child: Text(
                  "Hech qanday termin yo'q",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ))),
                ListView.builder(
              shrinkWrap: true,
              //itemCount: words.length,
              itemBuilder: (context, index) {
                //var item = words[index];
                return ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 24),

                  childrenPadding: EdgeInsets.symmetric(horizontal: 4),
                  title: Text(
                    "Salom",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, bottom: 8),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheetSiyrat();
        },
        child: Icon(Icons.add_rounded),
        backgroundColor: Colors.green,
      ),
    );
  }

  showBottomSheetSiyrat() {
    var size = MediaQuery.of(context).size;
    TextEditingController termin = TextEditingController();
    TextEditingController desc = TextEditingController();
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
      builder: (context) {
        return Container(
          height: size.height * 0.45 + MediaQuery.of(context).viewInsets.bottom,
          width: size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Terminni qo'shish",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close_rounded,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green, width: 1)),
                  child: TextField(
                    controller: termin,
                    style: const TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Terminni yozing',
                      hintStyle:
                      TextStyle(color: Colors.green.withOpacity(0.6)),
                    ),
                  ),
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green, width: 1)),
                  child: TextField(
                    controller: desc,
                    style: const TextStyle(color: Colors.green),
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Termin ta'rifi",
                      hintStyle:
                      TextStyle(color: Colors.green.withOpacity(0.6)),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 16),
                //   child: ElevatedButton(
                //     onPressed: () {
                //       if (termin.text.isEmpty) {
                //         AnimatedSnackBar.rectangle(
                //             'Ogohlantirish!', 'Termin nomini yozing',
                //             type: AnimatedSnackBarType.warning,
                //             duration: const Duration(milliseconds: 1000),
                //             brightness: Brightness.dark,
                //             mobileSnackBarPosition:
                //             MobileSnackBarPosition.top)
                //             .show(context);
                //         return;
                //       }
                //       if (desc.text.isEmpty) {
                //         AnimatedSnackBar.rectangle(
                //             'Ogohlantirish!', "Termin ta'rifini yozing",
                //             type: AnimatedSnackBarType.warning,
                //             duration: const Duration(milliseconds: 1000),
                //             brightness: Brightness.dark,
                //             mobileSnackBarPosition:
                //             MobileSnackBarPosition.top)
                //             .show(context);
                //         return;
                //       }
                //       service
                //           .write(
                //           WordModel(termin.text.trim(), desc.text.trim()))
                //           .then((value) {
                //         words.clear();
                //         words.addAll(service.read().toList());
                //         AnimatedSnackBar.rectangle(
                //             'Muvaffaqiyatli', "Termin saqlandi",
                //             type: AnimatedSnackBarType.success,
                //             duration: const Duration(milliseconds: 1000),
                //             brightness: Brightness.dark,
                //             mobileSnackBarPosition:
                //             MobileSnackBarPosition.top)
                //             .show(context);
                //         Navigator.pop(context);
                //       });
                //     },
                //     style: ElevatedButton.styleFrom(
                //         fixedSize: Size(size.width, 50),
                //         elevation: 0,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         foregroundColor: Colors.green.shade100),
                //     child: const Text("Termin qo'shish",
                //         style: TextStyle(color: Colors.white)),
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
