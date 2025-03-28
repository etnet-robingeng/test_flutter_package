import 'package:flutter/material.dart';

import 'model/navBarItem.dart';

class CustomNavBottomBar extends StatelessWidget {
  const CustomNavBottomBar({super.key, required this.selectedIndex, required this.barItems, required this.onTap});

  final int selectedIndex;
  final List<NavBarItem> barItems;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(0), boxShadow: []),
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: selectedIndex,
          items:
              barItems
                  .map(
                    (item) => BottomNavigationBarItem(
                      icon: Padding(padding: EdgeInsets.only(bottom: 5), child: item.icon),
                      label: item.label,
                    ),
                  )
                  .toList(),
          onTap: onTap,
          selectedItemColor: Theme.of(context).secondaryHeaderColor,
          unselectedItemColor: Theme.of(context).unselectedWidgetColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          elevation: 20.0,
        ),
      ),
    );
  }
}
