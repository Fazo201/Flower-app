import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/widget/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  IconData iconPassword = CupertinoIcons.eye_fill;
  bool obscurePassword = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async{
        log("verificationCompleted credential: $credential");
        final result = await _auth.signInWithCredential(credential);
        log("result.user: ${result.user}");
      },
      verificationFailed: (FirebaseAuthException e) {
        log("проверка не удалась: $e");
      },
      codeSent: (String verificationId, int? resendToken) {
        log("codeSent verificationId: $verificationId");
        log("codeSent resendToken: $resendToken");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        log("codeAutoRetrievalTimeout verificationId: $verificationId");
      },
      timeout: const Duration(seconds: 60),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          20.verticalSpace,
          SizedBox(
            width: context.mediaQuery.size.width * 0.9,
            child: MyTextField(
              controller: nameController,
              hintText: 'Name',
              keyboardType: TextInputType.name,
              prefixIcon: const Icon(CupertinoIcons.person_fill),
            ),
          ),
          10.verticalSpace,
          SizedBox(
            width: context.mediaQuery.size.width * 0.9,
            child: MyTextField(
              controller: emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(CupertinoIcons.mail_solid),
            ),
          ),
          10.verticalSpace,
          SizedBox(
            width: context.mediaQuery.size.width * 0.9,
            child: MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: obscurePassword,
              keyboardType: TextInputType.visiblePassword,
              prefixIcon: const Icon(CupertinoIcons.lock_fill),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscurePassword = !obscurePassword;
                    if (obscurePassword) {
                      iconPassword = CupertinoIcons.eye_fill;
                    } else {
                      iconPassword = CupertinoIcons.eye_slash_fill;
                    }
                  });
                },
                icon: Icon(iconPassword),
              ),
            ),
          ),
          20.verticalSpace,
          ElevatedButton(
            onPressed: () async {
              await signUp("+998998754899");
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                context.theme.colorScheme.primary,
              ),
              minimumSize: WidgetStatePropertyAll(Size(context.mediaQuery.size.width * 0.5, 42.h)),
            ),
            child: const Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
