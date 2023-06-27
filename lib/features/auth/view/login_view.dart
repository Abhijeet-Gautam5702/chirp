import 'package:chirp/common/common.dart';
import 'package:chirp/constants/constants.dart';
import 'package:chirp/features/auth/view/signup_view.dart';
import 'package:chirp/features/auth/widgets/auth_field.dart';
import 'package:chirp/theme/palette.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                label: "Done",
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
                  text: "Here for the first time? ",
                  children: [
                    TextSpan(
                      text: "Sign up",
                      style: const TextStyle(
                        color: Palette.blueColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to Sign Up page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpView(),
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
