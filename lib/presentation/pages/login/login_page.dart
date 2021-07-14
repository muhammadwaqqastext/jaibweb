import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/core/resources/images.dart';
import 'package:jaib_portal/presentation/widgets/custom_button.dart';
import 'package:jaib_portal/presentation/widgets/custom_text.dart';
import 'package:jaib_portal/presentation/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colours.green,
        child: Center(
          child: Container(
            height: 500,
            width: Get.width * 0.28,
            decoration: BoxDecoration(
              color: Colours.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        Images.jaib_logo_png,
                      ),
                    ),
                    CustomText(
                      text: 'Login',
                      fontSize: 36,
                      textColor: Colours.green,
                    ),
                    CustomText(
                      text: 'to start posting',
                      fontSize: 21,
                      textColor: Colours.greyColor,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(label: 'User name', hint: 'Please enter user name'),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(label: 'Password', hint: 'Please enter password'),
                    SizedBox(
                      height: 60,
                    ),
                    Center(child: CustomButton(
                      onPressed: () {
                        print("Button Clicked");
                      },
                    )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
