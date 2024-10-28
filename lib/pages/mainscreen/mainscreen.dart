import 'package:flutter/material.dart';
import 'package:nutech_fakhriawd/controllers/mainscreen_provider.dart';
import 'package:nutech_fakhriawd/views/ui/homepage.dart';
import 'package:nutech_fakhriawd/views/ui/profile.dart';
import 'package:nutech_fakhriawd/views/ui/topup.dart';
import 'package:nutech_fakhriawd/views/ui/transaction.dart';
import 'package:nutech_fakhriawd/views/shared/appstyle.dart';
import 'package:provider/provider.dart';
import 'package:ionicons/ionicons.dart';
import '../../views/shared/bottom_nav.dart';
import '../../views/shared/bottom_nav_widget.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    TopUpPage(),
    TransactionPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child){
          return Scaffold(
            backgroundColor: const Color(0xFFE2E2E2),
            body: pageList[mainScreenNotifier.pageIndex],
            bottomNavigationBar: const BottomNavBar(),
          );
        },
    );
  }
}



