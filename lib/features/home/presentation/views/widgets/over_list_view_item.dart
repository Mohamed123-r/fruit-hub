import 'package:flutter/material.dart';

import 'over_item.dart';

class OverListViewItem extends StatelessWidget {
  const OverListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? const SizedBox(
                width: 16,
              )
            : index == 4
                ? const SizedBox(
                    width: 8,
                  )
                : OverItem(),
      ),
    );
  }
}
