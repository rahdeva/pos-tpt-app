// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
// import 'package:mobile_jdi/resources/resources.dart';
// import 'package:mobile_jdi/utills/helper/validator.dart';
// import 'package:mobile_jdi/utills/widget/button/primary_button.dart';
// import 'package:mobile_jdi/utills/widget/forms/text_area_widget.dart';
// import 'package:sizer/sizer.dart';

// class PopUpWidget{
//   // Default Pop Up
//   static Future<dynamic> defaultPopUp({
//     required BuildContext context,
//     required String titleString, 
//     required String middleText, 
//     Widget? content, 
//   }) {
//     return Get.defaultDialog(
//       backgroundColor: AppColors.white,
//       radius : 8,
//       title: titleString,
//       titleStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
//         color: AppColors.black
//       ),
//       titlePadding: const EdgeInsets.only(top: 40),
//       contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
//       content: SizedBox(
//         width: 100.w,
//         child: Column(
//           children: [
//             Text(
//               middleText,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                 color: AppColors.grey3
//               ),
//             ),
//             content ?? const SizedBox(),
//           ],
//         ),
//       ),
//     );
//   }

//   // Success and Fail PopUp
//   static Future<dynamic> successAndFailPopUp({
//     required BuildContext context,
//     required String titleString, 
//     required String middleText, 
//     required String buttonText,
//     bool isSuccess = true,
//     Function()? buttonOnPressed,
//     textAreaResult
//   }) {
//     return Get.defaultDialog(
//       backgroundColor: AppColors.white,
//       radius : 8,
//       title: "",
//       contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
//       content: SizedBox(
//         width: 100.w,
//         child: Column(
//           children: [
//             Lottie.asset(
//               isSuccess 
//                 ? AppImages.lottieSuccess 
//                 : AppImages.lottieFailed,
//               repeat: false,
//               width: 50.w
//             ),
//             const SizedBox(height: 8),
//             Text(
//               titleString,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.displaySmall!.copyWith(
//                 color: AppColors.black
//               ),
//             ),
//             const SizedBox(height: 24),
//             Text(
//               middleText,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                 color: AppColors.grey3
//               ),
//             ),
//             const SizedBox(height: 24),
//             PrimaryButtonWidget(
//               buttonText: buttonText,
//               onPressed: buttonOnPressed ?? () => Get.back()
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Confirmation PopUp
//   static Future<dynamic> confirmationPopUp({
//     required BuildContext context,
//     required String titleString, 
//     required String popUpConfirmText, 
//     required String popUpCancelText, 
//     String? textAreaHintText, 
//     required Function() confirmOnPress,
//     Function()? cancelOnPress,
//     RxString? textAreaResultC,
//   }) {
//     return Get.defaultDialog(
//       backgroundColor: AppColors.white,
//       radius : 8,
//       title: "",
//       contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
//       content: SizedBox(
//         width: 100.w,
//         child: Column(
//           children: [
//             const Icon(
//               Icons.access_time_filled_rounded,
//               color: Colors.blue,
//               size: 80,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               titleString,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.displaySmall!.copyWith(
//                 color: AppColors.black
//               ),
//             ),
//             const SizedBox(height: 24),
//             textAreaHintText == null && textAreaResultC == null
//             ? const SizedBox()
//             : TextAreaWidget(
//                 name: "verifikasi", 
//                 hintText: textAreaHintText!, 
//                 textAreaResultC: textAreaResultC!, 
//                 maxLength: 200,
//                 validator: Validator.list([
//                   Validator.required(),
//                   Validator.maxLength(200),
//                 ]),
//                 onChanged: (newVal) {
//                   if (newVal != "") {
//                     textAreaResultC.value = newVal!;
//                   }
//                 }, 
//               ),
//             const SizedBox(height: 24),
//             SizedBox(
//               width: 80.w,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   PrimaryButtonWidget(
//                     buttonText: popUpConfirmText,
//                     margin: const EdgeInsets.all(0),
//                     width: 40.w - 32,
//                     customColors: AppColors.green4,
//                     onPressed: confirmOnPress
//                   ),
//                   const SizedBox(width: 16),
//                   PrimaryButtonWidget(
//                     buttonText: popUpCancelText,
//                     margin: const EdgeInsets.all(0),
//                     width: 40.w - 32,
//                     customColors: AppColors.red2,
//                     onPressed: cancelOnPress ?? () => Get.back()
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }