import 'dart:developer';

import 'package:brin_wierd/services/services.dart';
import 'package:get/get.dart';

class BrainController extends GetxController {
  RxList brainListUsers = [].obs;
  RxBool isLoading = false.obs;

  Services service = Services();
  getBrainUsers() async {
    log("Fetching Started");
    isLoading.value = true;
    var brainUsers = await service.fetchdata();
    brainListUsers.value = brainUsers;
    isLoading.value = false;
    log("Fetching Closed");
  }
}
