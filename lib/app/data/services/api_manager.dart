import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:post_fetching_api/app/data/model/agent_model.dart';

var agentApi = 'https://xtremesmarketing.com/services/Xtreme/multipart/';

class API_Manager {
  Future<AgentModel> getAgents() async {
    // var client = http.Client();
    var agentModel = null;
    List<AgentModel> allData = [];
    try {
      var map = new Map<String, dynamic>();
      map['type'] = 'SelectTopAgentForWebsite';
      var response = await http.post(Uri.parse(agentApi), body: map);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString) as String;
        var finalData = json.decode(jsonMap) as List;
        log('$finalData');
        agentModel = AgentModel.fromJson(finalData);
        return agentModel;
      }
    } catch (e) {
      print(e.toString());
    }
    return agentModel;
  }
}
