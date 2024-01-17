import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_mobile/data/constants.dart';
import 'package:user_mobile/ui/screens/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

TextEditingController mobileNumberController = TextEditingController();
TextEditingController passwordController = TextEditingController();
FocusNode mobileNumberFocusNode = FocusNode();
FocusNode passwordFocusNode = FocusNode();
bool _isPasswordVisible = false;

class _SignInScreenState extends State<SignInScreen> {
  @override
  void dispose() {
    mobileNumberFocusNode.dispose();
    passwordFocusNode.dispose();
    mobileNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: mobileNumberFocusNode.hasFocus ||
                            passwordFocusNode.hasFocus
                        ? const SizedBox()
                        : Image.asset(
                            'assets/logo.png',
                            width: MediaQuery.of(context).size.width - 120,
                          ),
                  ),

                  // bottom fields
                  const Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      height: 400,
                      child: Column(
                        children: [
                          Text(
                            'Log in',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 25),
                          InputFields(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // mobile number
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Mobile Number',
            style: TextStyle(
              color: AppColors.secondary,
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextField(
          controller: mobileNumberController,
          focusNode: mobileNumberFocusNode,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: '07X123456X',
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 0.92,
                color: Color(0xFFD8DADC),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 0.92,
                color: Color(0xFFD8DADC),
              ),
            ),
          ),
          style: const TextStyle(
            color: Color(0xFF41423C),
            fontSize: 14.78,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 25),

        // Password
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',
            style: TextStyle(
              color: AppColors.secondary,
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextField(
          controller: passwordController,
          focusNode: passwordFocusNode,
          obscureText: !_isPasswordVisible,
          style: const TextStyle(
            color: Color(0xFF41423C),
            fontSize: 14.78,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 0.92,
                color: Color(0xFFD8DADC),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 0.92,
                color: Color(0xFFD8DADC),
              ),
            ),
            suffixIcon: IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 17,
                  color: AppColors.grey,
                ),
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 40),

        // btn
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );

            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
            child: const Text(
              'Log In',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
