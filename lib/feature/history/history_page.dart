import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_tpt_app/feature/history/history_controller.dart';
import 'package:pos_tpt_app/resources/resources.dart';
import 'package:pos_tpt_app/utills/helper/responsive.dart';
import 'package:sizer/sizer.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
      builder: (controller) {
        return SafeArea(
          child: Container(
            width: 100.w,
            height: 100.h,
            margin: const EdgeInsets.fromLTRB(24, 40, 0, 0),
            decoration: const BoxDecoration(
              color: AppColors.background2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!Responsive.isDesktop(context))
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: (){
                        Scaffold.of(context).openDrawer();
                      }
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 24),
                    child: Text(
                      "History".tr,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
