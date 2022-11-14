import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white
          ),
        ),
        Container()
      ],
    ),
    );
  }
}
