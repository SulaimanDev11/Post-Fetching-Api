import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:post_fetching_api/app/data/model/agent_model.dart';

var agentApi = 'https://xtremesmarketing.com/services/Xtreme/multipart/';

class API_Manager {
  Future<List<dynamic>> getAgents() async {
    // var client = http.Client();
    // var agentModel = null;
    var finalData;
    // List<AgentModel> allData = [];
    try {
      var map = Map<String, dynamic>();
      map['type'] = 'SelectTopAgentForWebsite';
      var response = await http.post(Uri.parse(agentApi), body: map);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString) as String;
        var finalData = json.decode(jsonMap) as List;
        log('${finalData[0]['name']}');
        // agentModel = AgentModel.fromJson(finalData);
        return finalData;
      }
    } catch (e) {
      print(e.toString());
    }
    return finalData;
  }
}
