import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_tpt_app/feature/home/widgets/side_menu.dart';
import 'package:pos_tpt_app/utills/helper/responsive.dart';
import '/feature/home/home_controller.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeController>(
//       builder: (controller) {
//         return Scaffold(
//             body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 16, top: 24),
//                 child: Text(
//                   "txt_home_attendance_status ".tr,
//                   textAlign: TextAlign.left,
//                   style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
//                 ),
//               )
//             ],
//           ),
//         ));
//       }
//     );
//   }
// }
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          drawer: const SideMenu(),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // We want this side menu only for large screen
                if (Responsive.isDesktop(context))
                  const Expanded(
                    // default flex = 1
                    // and it takes 1/6 part of the screen
                    child: SideMenu(),
                  ),
                // Expanded(
                //   // It takes 5/6 part of the screen
                //   flex: 5,
                //   child: DashboardScreen(),
                // ),
              ],
            ),
          ),
        );
      }
    );
  }
}
