import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_tpt_app/feature/history/history_controller.dart';
import 'package:pos_tpt_app/resources/resources.dart';
import 'package:pos_tpt_app/utills/widget/button/icon_button.dart';

class SaleHistoryHeaderWidget extends StatelessWidget {
  const SaleHistoryHeaderWidget({
    super.key,
    required this.controller
  });

  final HistoryController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "History Penjualan",
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w700
          ),
        ),
        const Expanded(child: SizedBox()),
        IconButtonWidget(
          controller: controller,
          icon: const FaIcon(
            FontAwesomeIcons.arrowsRotate,
            color: AppColors.white,
            size: 16,
          ),
          onPressed: (){
            controller.refreshPage();
          }, 
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}