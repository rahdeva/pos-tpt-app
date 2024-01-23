import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '/feature/auth/auth_controller.dart';
// import '/model/user.dart';

class ProfileController extends GetxController {
  final AuthController authController = AuthController.find;
  FirebaseAuth auth = FirebaseAuth.instance;

  // UserData? get user => authController.user;

  // Future<void> signOut() async {
  //   await authController.signOut();
  // }

  Future<void> logout() async {
    try {
      await auth.signOut();
      await authController.signOut();
    } catch (e) {
      Get.snackbar(
        "TERJADI KESALAHAN", 
        "Tidak dapat logout."
      );
    }
  }
}
