// ignore_for_file: use_key_in_widget_constructors

import 'package:cinefilos/controllers/home_controller.dart';
import 'package:cinefilos/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollState) {
        if (scrollState.metrics.extentAfter < 150) {
          controller.getCharacterLoadMore();
        }
        return false;
      },
      child: RefreshIndicator(
          onRefresh: controller.refresh,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: MyColors.red,
                title: Image.asset(
                  'assets/img/logo.png',
                  width: 100,
                ),
                centerTitle: true,
              ),
              body: const Text("eewge"))),
    );
  }
}
