import 'package:brin_wierd/model/brianModel.dart';
import 'package:brin_wierd/view/userDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    required this.brainModel,
    super.key,
  });
  final BrainModel brainModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Center(
            child: Text(brainModel.id.toString()),
          ),
        ),
        title: Text(
          brainModel.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(brainModel.email),
        onTap: () => Get.to(UserDetailsPage(brainModel: brainModel)),
      ),
    );
  }
}
