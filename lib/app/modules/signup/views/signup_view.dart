import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/login.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 294,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4699999988079071),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 120.7,
                  ),
                  Container(
                    width: 196,
                    height: 196,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Ellipse 23.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 55,
                  width: 10,
                ),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Color(0xFF0A1F44),
                    fontSize: 35,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    height: 0.01,
                    letterSpacing: -0.08,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Hello there, sign up to continue!',
                  style: TextStyle(
                    color: Color(0x4F414141),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.15,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Name',
                  style: TextStyle(
                    color: Color(0xFF7E8389),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 319,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF2F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: TextField(
                    controller: controller.nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                        color: Color(0x877E8389),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.15,
                      ),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xFF7E8389),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 319,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF2F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: TextField(
                    controller: controller.emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: Color(0x877E8389),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.15,
                      ),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xFF7E8389),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 319,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF2F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: TextField(
                    controller: controller.passwordController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: Color(0x877E8389),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.15,
                      ),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot your password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF0037A6),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Obx(() => Checkbox(
                              value: controller.isChecked
                                  .value, // Set the initial value of the checkbox
                              onChanged: (bool? value) {
                                controller.isChecking(value);
                              },
                            )),
                      ),
                      const WidgetSpan(
                          child: SizedBox(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'By creating an account, you agree to our\n',
                                    style: TextStyle(
                                      color: Color(0xFFC4C4C4),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms & Conditions',
                                    style: TextStyle(
                                      color: Color(0xFF0037A6),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: -0.15,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 305,
                  height: 42,
                  child: Obx(
                    () => ElevatedButton(
                      onPressed: () {
                        if (controller.isChecked.value == true) {
                          controller.onSignupCliked();
                          print("sdfdsf");
                        } else {
                          Null;
                        }
                      },
                      child: const Text(
                        'Sign in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          height: 0,
                          letterSpacing: -0.41,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.isChecked.value
                            ? const Color(0xFF0037A6)
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/signup');
                    },
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ',
                            style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.15,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                              color: Color(0xFF3B5998),
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.15,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
