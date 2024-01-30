import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_tpt_app/feature/setting/settting_controller.dart';
import 'package:pos_tpt_app/utills/widget/button/primary_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Text(
                  "txt_home_attendance_status ".tr,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              PrimaryButtonWidget(
                margin: const EdgeInsets.all(0),
                buttonText: "Logout", 
                onPressed: () async {
                  controller.logout();
                },
              ),
            ],
          ),
        ));
      }
    );
  }
}
