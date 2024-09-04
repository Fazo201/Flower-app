import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/widget/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
	final passwordController = TextEditingController();
  final emailController = TextEditingController();
	IconData iconPassword = CupertinoIcons.eye_fill;
	bool obscurePassword = true;


Future<void> signInWithPhoneNumber(String phoneNumber) async {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  await _auth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (PhoneAuthCredential credential) async {
      // Автоматическая проверка при доступности
      await _auth.signInWithCredential(credential);
    },
    verificationFailed: (FirebaseAuthException e) {
      log('Ошибка проверки: ${e.message}');
    },
    codeSent: (String verificationId, int? resendToken) {
      log('Код отправлен: $verificationId');
      // Сохраните verificationId для использования при вводе кода
    },
    codeAutoRetrievalTimeout: (String verificationId) {
      log('Время автоизвлечения кода истекло: $verificationId');
    },
  );
}
	
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: context.mediaQuery.size.width * 0.9,
          child: MyTextField(
            controller: emailController,
            hintText: 'Email',
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(CupertinoIcons.mail_solid),
          )
        ),
        const SizedBox(height: 10),
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
                  if(obscurePassword) {
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
          onPressed: () {
             signInWithPhoneNumber("+998998754899");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              context.theme.colorScheme.primary,
            ),
            minimumSize: WidgetStatePropertyAll(Size(context.mediaQuery.size.width * 0.5, 42.h)),
          ),
          child: const Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}