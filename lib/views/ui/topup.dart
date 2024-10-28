import 'package:flutter/material.dart';
import 'package:nutech_fakhriawd/views/shared/appstyle.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
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
                            "Top Up",
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
                      height: 180,
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
                                    "Rp 0",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ]
                      )
                  ),
                  SizedBox(height: 70,),
                  const Row(
                      children: [
                        Text(
                          "Silahkan masukan",
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
                        "nominal Top Up",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.grey.withOpacity(0.1),
                          Colors.grey.withOpacity(0.1),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.money, size: 15, color: Colors.black,
                          ),
                          SizedBox(width: 50,),
                          Text(
                            "10.000",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ]
              )
          )
      );
  }
}
