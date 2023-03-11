import 'package:brin_wierd/constant/colors.dart';
import 'package:brin_wierd/constant/string.dart';
import 'package:flutter/material.dart';

class TopAppBarCustom extends StatelessWidget {
  const TopAppBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: KColor.kgreen500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            companyName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
