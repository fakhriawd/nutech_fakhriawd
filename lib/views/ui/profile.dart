import 'package:flutter/material.dart';
import 'package:nutech_fakhriawd/views/shared/appstyle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 30),
            child: Column(
                children: [
                  Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_rounded, size: 15, color: Colors.black,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Kembali",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(""
                            "Akun",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                        SizedBox(
                          width: 150,
                        ),
                      ]
                  ),
                  Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(top: 5, left: 10),
                              height: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/ProfilePhoto1.png"
                                      ),
                                  )
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              height: 180,
                              margin: const EdgeInsets.only(left: 0, top: 150),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Kristanto Wibowo",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                      )
                  ),

                ]
            )
        )
    );
  }
}