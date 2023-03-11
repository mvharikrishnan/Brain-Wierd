import 'package:brin_wierd/controller/brainController.dart';

import 'package:brin_wierd/view/widgets/AppBarCustom.dart';
import 'package:brin_wierd/view/widgets/listTileWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BrainController());
    controller.getBrainUsers();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            const TopAppBarCustom(),
            Obx(() => Column(
                  children: [
                    controller.isLoading.value
                        ? const Center(child: CircularProgressIndicator())
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height - 100,
                              child: ListView.builder(
                                itemCount: controller.brainListUsers.length,
                                itemBuilder: (context, index) => ListTileWidget(
                                    brainModel:
                                        controller.brainListUsers[index]),
                              ),
                            ),
                          ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
