import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:pos_tpt_app/themes/app_theme.dart';
import 'package:pos_tpt_app/utills/widget/forms/label_form_widget.dart';
import 'package:pos_tpt_app/utills/widget/text/gradient_text_widget.dart';
import 'package:sizer/sizer.dart';
import '/utills/helper/validator.dart';
import '/utills/widget/button/primary_button.dart';
import '/utills/widget/forms/text_field_widget.dart';
import '/resources/resources.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return FormBuilder(
            key: controller.formKey,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AppImages.bgLogin.image().image,
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [AppElevation.elevation4px]
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  GradientTextWidget(
                                    'Point of Sales',
                                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                      fontSize: 40,
                                      // color: AppColors.primary,
                                      fontWeight: FontWeight.w700
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        AppColors.primary,
                                        AppColors.primary.withOpacity(0.35),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Text(
                                    "Login to your Account",
                                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              const LabelFormWidget(
                                labelText: "Email"
                              ),
                              TextFieldWidget(
                                name: 'email',
                                // label: 'Username',
                                validator: Validator.required(),
                                keyboardType: TextInputType.text,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                borderRadius: 10,
                              ),
                              const SizedBox(height: 16),
                              const LabelFormWidget(
                                labelText: "Password"
                              ),
                              TextFieldWidget(
                                name: 'password',
                                // label: 'Password',
                                obsecure: controller.isObscure,
                                validator: Validator.required(),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                keyboardType: TextInputType.text,
                                borderRadius: 10,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.isObscure = !controller.isObscure;
                                    controller.update();
                                  },
                                  icon: controller.isObscure
                                    ? const Icon(
                                        Icons.visibility_outlined,
                                        color: AppColors.primary,
                                      )
                                    : const Icon(
                                        Icons.visibility_off_outlined,
                                        color: AppColors.primary,
                                      ),
                                ),
                              ),
                              const SizedBox(height: 60),
                              PrimaryButtonWidget(
                                margin:  const EdgeInsets.all(0),
                                buttonText: "Login", 
                                onPressed: () async {
                                  if (
                                    controller.formKey.currentState != null &&
                                    controller.formKey.currentState!.saveAndValidate()
                                  ){
                                    controller.loginWithEmailAndPassword(
                                      controller.formKey.currentState!.fields['email']!.value,
                                      controller.formKey.currentState!.fields['password']!.value,
                                    );
                                  }
                                },
                              ),
                              PrimaryButtonWidget(
                                margin:  const EdgeInsets.all(0),
                                buttonText: "Register", 
                                onPressed: () async {
                                  if (
                                    controller.formKey.currentState != null &&
                                    controller.formKey.currentState!.saveAndValidate()
                                  ){
                                    controller.registerWithEmailAndPassword(
                                      controller.formKey.currentState!.fields['email']!.value,
                                      controller.formKey.currentState!.fields['password']!.value,
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

