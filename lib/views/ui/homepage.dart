import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:nutech_fakhriawd/views/shared/appstyle.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
      info= json.decode(value);
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 30),
        child: Column(
            children: [
              Row(
                children:
                [Image.asset(
                  "assets/images/Logo.png",
                  width: 15,
                  height: 15,
                ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "SIMS PPOB",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(child: Container()),
                  Image.asset(
                    "assets/images/ProfilePhoto.png",
                    width: 35,
                    height: 35,
                  )
                ],
              ),
              const SizedBox(height: 30,),
              const Row(
                  children: [
                    Text(
                      "Selamat datang,",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ]
              ),
              const SizedBox(height: 0,),
              const Row(
                children: [
                  Text(
                    "Kristanto Wibowo",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 30, left: 10),
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Background_Saldo.png"
                                  ),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 160,
                          margin: const EdgeInsets.only(left: 40, top: 55),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Saldo anda",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Rp .......",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Lihat Saldo",
                                        style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Icon(Icons.remove_red_eye_outlined, size: 15, color: Colors.white,)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/icons/PBB.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Listrik.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Pulsa.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/PDAM.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/PGN.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Televisi.png',
                    width: 60,
                    height: 100,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/icons/Musik.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2),
                  // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Game.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Makanan.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Kurban.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Zakat.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(width: 0.2), // Memberi jarak antar gambar
                  Image.asset(
                    'assets/icons/Data.png',
                    width: 60,
                    height: 100,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(children: [
                Text(
                  "Temukan promo menarik",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                )
              ],
              ),
              Expanded(child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: info.length,
                  itemBuilder: (_, i){
                    return Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 200,
                          height: 170,
                          padding: EdgeInsets.only(left: 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                      info[i]['img']
                                  )
                              )
                          ),
                        )
                      ],
                    );
                  }
              )
              )
        ]
        ),
    ),
    );
  }
}
