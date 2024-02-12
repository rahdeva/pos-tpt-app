import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:pos_tpt_app/feature/history/history_controller.dart';
import 'package:pos_tpt_app/feature/history/widgets/history_detail_table_widget.dart';
import 'package:pos_tpt_app/model/sale.dart';
import 'package:pos_tpt_app/resources/resources.dart';
import 'package:pos_tpt_app/utills/widget/button/primary_button.dart';
import 'package:pos_tpt_app/utills/widget/pop_up/pop_up_widget.dart';
import 'package:sizer/sizer.dart';

class ViewSaleHistoryDetailButton extends StatelessWidget {
  const ViewSaleHistoryDetailButton({
    super.key,
    required this.sale,
    required this.controller,
  });

  final Sale sale;
  final HistoryController controller;

  @override
  Widget build(BuildContext context) {
    return PrimaryButtonWidget(
      customColors: AppColors.blue,
      margin: const EdgeInsets.all(0),
      buttonText: "View", 
      withIcon: true,
      icon: const FaIcon(
        FontAwesomeIcons.eye,
        color: AppColors.white,
        size: 16,
      ),  
      onPressed: () async {
        controller.saleDetail = sale;
        await controller.getSalesHistoryDetail();
        // ignore: use_build_context_synchronously
        PopUpWidget.inputPopUp(
          context: context,
          width: 72.w,
          titleString: "Detail Penjualan", 
          withMiddleText: false,
          content: SizedBox(
            height: 72.h,
            width: 72.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children : [  
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Total : ${NumberFormat.currency(
                      locale: 'id', 
                      decimalDigits: 0,
                      symbol: "Rp "
                    ).format(sale.totalPrice)}",
                    textAlign: TextAlign.center, 
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SaleHistoryDetailTableWidget(
                  controller: controller
                ),
              ],
            ),
          )
        );
      },
    );
  }
}
