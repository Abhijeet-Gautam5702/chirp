import 'package:chirp/common/common.dart';
import 'package:chirp/constants/constants.dart';
import 'package:chirp/features/auth/view/login_view.dart';
import 'package:chirp/features/auth/widgets/auth_field.dart';
import 'package:chirp/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  // create an instance of appbar so that whenever state changes, the UIConstants.appBar() function is not called repititively
  final appbar = UIConstants.appBar();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text Input : Enter Name
              AuthField(
                controller: emailController,
                hintText: "email",
              ),
              const SizedBox(
                height: 7,
              ),
              // Text Input : Enter Password
              AuthField(
                controller: passwordController,
                hintText: "password",
              ),
              const SizedBox(
                height: 15,
              ),
              // Button : DONE
              SmallButton(
                label: "Sign Up",
                onTap: () {},
                backgroundColor: Palette.whiteColor,
                textColor: Palette.backgroundColor,
              ),
              const SizedBox(
                height: 30,
              ),
              // link for signup
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  children: [
                    TextSpan(
                      text: "Login",
                      style: const TextStyle(
                        color: Palette.blueColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to Login page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginView(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
