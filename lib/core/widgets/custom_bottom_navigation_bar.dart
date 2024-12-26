import 'package:flutter/material.dart';

import '../../features/main/domain/entities/bottom_navigation_bar_entity.dart';
import '../../features/main/presentation/views/widgets/bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectIndex =  0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          color: Colors.white,
          shadows: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
            children: bottomNavigationBarItems.asMap().entries.map((e) {
          var index = e.key;
          var item = e.value;
          return Expanded(
            flex: index == selectIndex ? 3 : 2,
            child: InkWell(
              onTap: () {
                setState(() {
                  selectIndex = index;
                  widget.onItemTapped(index);
                });
              },
              child: BottomNavigationBarItems(
                isActive: selectIndex == index,
                bottomNavigationBarEntity: item,
              ),
            ),
          );
        }).toList()));
  }
}
