import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:post_fetching_api/app/data/model/agent_model.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Container(
          child: Obx(
        () => controller.agentModel.isNotEmpty
            ? ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 100,
                      child: ListTile(
                        title: Text(controller.agentModel[index]['name']),
                        leading: CircleAvatar(
                          child: Text(controller.agentModel[index]
                                  ['totalproperty']
                              .toString()),
                        ),
                        trailing: Text(controller.agentModel[index]['isActive']
                            .toString()),
                        subtitle: Text(controller.agentModel[index]
                                ['description']
                            .toString()),
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      )
          // child: FutureBuilder<AgentModel>(
          //     future: controller.agentModel,
          //     builder: (context, snapshot) {
          //       if (snapshot.hasData) {
          //         return ListView.builder(
          //             itemCount: 3,
          //             itemBuilder: (context, index) {
          //               return Container(
          //                 margin: EdgeInsets.only(
          //                     top: 5, bottom: 5, left: 10, right: 10),
          //                 height: 100,
          //                 color: Colors.red[50],
          //                 child: Row(
          //                   children: [
          //                     Card(
          //                       clipBehavior: Clip.antiAlias,
          //                       shape: RoundedRectangleBorder(
          //                         borderRadius: BorderRadius.circular(24),
          //                       ),
          //                       child: AspectRatio(
          //                         aspectRatio: 1,
          //                         child: Image.network(
          //                           snapshot.data!.imageName,
          //                           fit: BoxFit.cover,
          //                         ),
          //                       ),
          //                     ),
          //                     Flexible(
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         mainAxisAlignment:
          //                             MainAxisAlignment.spaceAround,
          //                         children: [
          //                           Text(
          //                             snapshot.data!.name,
          //                             overflow: TextOverflow.ellipsis,
          //                             style: TextStyle(color: Colors.blue),
          //                           ),
          //                           Text(
          //                             snapshot.data!.description,
          //                             maxLines: 2,
          //                             overflow: TextOverflow.ellipsis,
          //                             style: TextStyle(color: Colors.grey),
          //                           ),
          //                         ],
          //                       ),
          //                     )
          //                   ],
          //                 ),
          //               );
          //             });
          //       } else {
          //         return Center(
          //           child: CircularProgressIndicator(),
          //         );
          //       }
          //     }),
          ),
    );
  }
}
