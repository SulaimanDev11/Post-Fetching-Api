import 'dart:developer';

import 'package:get/get.dart';
import 'package:post_fetching_api/app/data/model/agent_model.dart';
import 'package:post_fetching_api/app/data/services/api_manager.dart';

class HomeController extends GetxController {
  var agentModel = [].obs;
  @override
  void onInit() async {
    agentModel.value = await API_Manager().getAgents();
    // log(agentModel.toString());
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
