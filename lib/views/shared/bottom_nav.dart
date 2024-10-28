import 'package:flutter/material.dart';
import 'package:nutech_fakhriawd/controllers/mainscreen_provider.dart';
import 'bottom_nav_widget.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 0;
                      },
                      icon: Ionicons.home,
                    ),
                    BottomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 1;
                      },
                      icon: Icons.money,
                    ),
                    BottomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 2;
                      },
                      icon: Icons.credit_card,
                    ),
                    BottomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 3;
                      },
                      icon: Icons.person,
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}