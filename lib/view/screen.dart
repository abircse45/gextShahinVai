import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/app_controller.dart';
import 'package:getx_practice/view/deatsils.dart';

class Home extends StatelessWidget {
  final appController = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx"),
      ),
      body: Obx(() {
        if (appController.loading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(

          itemCount: appController.getHotel.value.response.length,
          itemBuilder: (_, index) {
            var data = appController.getHotel.value.response[index];
            return Card(
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Get.to(Detail(title: data.title,),transition: Transition.zoom);
                },
                title: Text(data.title),
              ),
            );
          },
        );
      }),
    );
  }
}
