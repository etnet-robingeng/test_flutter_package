import 'package:flutter/material.dart';

class CustomNavBottomBar extends StatelessWidget {
  const CustomNavBottomBar({
    super.key,
    required this.selectedIndex,
    required this.icons,
    required this.labels,
    required this.onTap,
    required this.tabController,
  });

  final int selectedIndex;
  final List<Widget> icons;
  final List<String> labels;
  final Function(int) onTap;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: Container(
          color: Colors.teal.withOpacity(0.1),
          child: TabBar(
              onTap: onTap,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.blueGrey,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide.none,
              ),
              tabs: [
                for (int i = 0; i < icons.length; i++) _tabItem(icons[i], labels[i], isSelected: i == selectedIndex),
              ],
              controller: tabController),
        ),
      ),
    );
    // return BottomAppBar(
    //   child: Container(
    //     height: 100,
    //     padding: const EdgeInsets.all(12),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(50.0),
    //       child: Container(
    //         color: Colors.teal.withOpacity(0.1),
    //         child: TabBar(
    //           controller: tabController,
    //           onTap: onTap,
    //           labelColor: Colors.white,
    //           unselectedLabelColor: Colors.blueGrey,
    //           indicator: const UnderlineTabIndicator(borderSide: BorderSide.none),
    //           tabs: [
    //             for (int i = 0; i < icons.length; i++) _tabItem(icons[i], labels[i], isSelected: i == selectedIndex),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  Widget _tabItem(Widget child, String label, {bool isSelected = false}) {
    return AnimatedContainer(
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      decoration: !isSelected ? null : BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black),
      padding: const EdgeInsets.all(10),
      child: Column(children: [child, Text(label, style: TextStyle(fontSize: 8))]),
    );
  }
}
